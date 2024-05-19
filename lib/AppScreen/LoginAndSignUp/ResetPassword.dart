import 'package:flutter/material.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/CustomTextForm.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';

import 'LogInScreen.dart';

class ResetPassword extends StatelessWidget {
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: lightGrey,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.bottomCenter,
                           child: Text(
                             'Reset Password',
                             style: TextStyle(fontSize: 35),
                             textAlign: TextAlign.center,
                           ),
                        ),
                      ),
                      Expanded(flex: 2,
                        child: Container(

                          alignment: Alignment.center,
                          child: Form(
                            key: keyForm,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                PasswordTextForm(hintText: 'New password',),
                                PasswordTextForm(hintText: 'Confirm password',),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPassword()));
                          },
                          child: TileButton(
                            title: 'Confirm',
                          )),
                    ],
                  ),
                )),
            Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 20),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LogInScreen()));
                      },
                      child: Text(
                        'Log In Instead',
                        style: TextStyle(
                            color: blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
