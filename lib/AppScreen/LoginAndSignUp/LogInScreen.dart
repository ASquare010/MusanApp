import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/AppScreen/LoginAndSignUp/ForgotPassword.dart';
import 'package:new_project/ModalClasses/CustomTextForm.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';
import 'LoginVerifyScreen.dart';
import 'SelectProviderAccount.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            'Log in',
                            style: TextStyle(fontSize: 35),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          child: Form(
                            key: keyForm,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextForm(),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => LoginVerifyScreen()));
                                    },
                                    child: TileButton(
                                      title: 'Log in',
                                      isOutlined: false,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){},
                    child: TileButton(
                      title: 'Log in With Google',
                      isOutlined: true,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an account?',
                          style: TextStyle(color: black, fontSize: 16)),
                      TextButton(
                          onPressed: () {
                            // if (keyForm.currentState.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SelectProviderAccount()));
                            // }
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            'Terms & Conditions',
                            style: TextStyle(
                                color: black,
                                 fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
