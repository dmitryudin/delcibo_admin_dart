import 'package:flutter/material.dart';
import 'Views/login.dart';
import 'Controllers/AuthorizationController.dart';

void main() {

  Auth auth1 = new Auth();
  print(auth1.user_id);

  runApp(
    new Login()
    );
}