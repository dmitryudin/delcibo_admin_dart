
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: new Image.asset("assets/images/logo.png"),

                  width: 400.0,
                ),
                new Container(
                  child: new TextFormField(
                    decoration: new InputDecoration(labelText: "Логин"),
                    keyboardType: TextInputType.emailAddress,
                    style: _sizeTextBlack,
                  ),
                  width: 400.0,
                ),
                new Container(
                  child: new TextFormField(
                    decoration: new InputDecoration(labelText: "Пароль"),
                    obscureText: true,
                    style: _sizeTextBlack,
                  ),
                  width: 400.0,
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 25.0),
                  child: new MaterialButton(
                    color: Theme
                        .of(context)
                        .accentColor,
                    height: 50.0,
                    minWidth: 150.0,
                    onPressed: () {  },
                    child: new Text(
                      "Вход",
                      style: _sizeTextWhite,
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 25.0),
                  child: new MaterialButton(
                    color: Theme
                        .of(context)
                        .accentColor,
                    height: 50.0,
                    minWidth: 150.0,
                    onPressed: () {  },
                    child: new Text(
                      "Регистрация",
                      style: _sizeTextWhite,
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}