import 'package:ecommerceapp/models/user.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    id: "",
    name: "",
    email: '',
    password: '',
    address: '',
    type: '',
    token: '',
    cart: []
  );

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }

  void logutUser(User user) {
    user = User(
      id: "",
      name: "",
      email: '',
      password: '',
      address: '',
      type: '',
      token: '',
      cart: []
    );

    notifyListeners();
  }

  void setUserFromModel(User user) {
    _user = user;
    notifyListeners();
  }
}
