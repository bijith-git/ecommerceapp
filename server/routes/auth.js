const express = require("express");
const User = require("../model/user");

const authRouter = express.Router();

authRouter.get("/user", (req, res) => {
  res.json({ msg: "Bijith" });
});

authRouter.post("/api/signup", async (req, res) => {
  const { name, email, password } = req.body;
  const existingUser = await User.findOne({ email });

  if (existingUser) {
    return res
      .status(400)
      .json({ msg: "User with same email already exists!" });
  }
  let user = new User({
    email,
    password,
    name,
  });

  user = await user.save();
});

module.exports = authRouter;
