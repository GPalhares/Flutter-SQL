// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_mysql/View/Home_Page/users_page.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:flutter/material.dart';
import 'package:flutter_mysql/View/Custom_Widgets/custom_button.dart';
import 'package:flutter_mysql/View/Custom_Widgets/text_field_custom.dart';
import 'package:flutter_mysql/db/user_data.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

TextEditingController textController = TextEditingController();

class _RegisterPageState extends State<RegisterPage> {
  String name = "";
  String email = "";
  String password = "";

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
              controller: nameController,
              obscureText: false,
              iconImage: Icon(Icons.email),
              textHint: 'Name',
              textLabel: 'Name',
            ),
            Padding(padding: EdgeInsets.all(5)),
            CustomTextField(
              controller: emailController,
              obscureText: true,
              iconImage: Icon(Icons.lock),
              textHint: 'Email',
              textLabel: 'Email',
            ),
            Padding(padding: EdgeInsets.all(5)),
            CustomTextField(
              controller: passwordController,
              obscureText: true,
              iconImage: Icon(Icons.lock),
              textHint: 'Password',
              textLabel: 'Password',
            ),
            Padding(padding: EdgeInsets.all(15)),
            CustomButton(
              textButton: 'Register',
              buttonTap: () async {
                // Save new journal

                // Clear the text fields
                nameController.text = '';
                emailController.text = '';
                passwordController.text = '';

                // Close the bottom sheet
                Navigator.pop(context);
              },
            ),
            Padding(padding: EdgeInsets.all(15)),
          ],
        ),
      ),
    );
  }
}
