// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'users_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mysql/View/Custom_Widgets/text_field_custom.dart';
import 'package:flutter_mysql/View/Home_Page/register_page.dart';

import '../Custom_Widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(80.0),
        color: Color.fromARGB(255, 0, 0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                obscureText: false,
                iconImage: Icon(Icons.email),
                textHint: 'Use a valid email',
                textLabel: 'Email',
                controller: emailController,
              ),
              Padding(padding: EdgeInsets.all(5)),
              CustomTextField(
                obscureText: true,
                iconImage: Icon(Icons.lock),
                textHint: 'Use a safe password',
                textLabel: 'Password',
                controller: passwordController,
              ),
              Padding(padding: EdgeInsets.all(15)),
              CustomButton(
                  textButton: 'Login',
                  buttonTap: () {
                    Navigator.pushNamed(context, '/second');
                  }),
              Padding(padding: EdgeInsets.all(15)),
              CustomButton(
                  textButton: 'Users',
                  buttonTap: () {
                    Navigator.pushNamed(context, '/third');
                  }),
            ],
          ),
        ));
  }
}
