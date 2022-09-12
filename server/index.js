//import express
const express = require("express");
//import mongoose
const mongoose = require("mongoose");

const authRouter = require("./routes/auth");

//port address
const PORT = 3000;

//init
const app = express();

const DB =
  "mongodb+srv://bijith:admin@cluster0.3r5cqlc.mongodb.net/?retryWrites=true&w=majority";

//creating  API
app.listen(PORT, () => {
  console.log(PORT);
});

app.use(authRouter);

mongoose
  .connect(DB)
  .then(() => {
    console.log("connection success");
  })
  .catch((e) => {
    console.log(e);
  });
