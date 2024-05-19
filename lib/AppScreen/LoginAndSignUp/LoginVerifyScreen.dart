import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/AppScreen/HomeScreen/CarPickup/NavigatorPage.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/CustomTextForm.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';
import 'SelectProviderAccount.dart';

class LoginVerifyScreen extends StatefulWidget {
  @override
  _LoginVerifyScreenState createState() => _LoginVerifyScreenState();
}

class _LoginVerifyScreenState extends State<LoginVerifyScreen> {
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('+12345678901'),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.canPop(context);
                                        },
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(
                                              color: blue,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomTextForm(
                                  keyBordType: TextInputType.number,
                                  hintText: 'Verification code',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => NavigatorPage()));
                                    },
                                    child: TileButton(
                                      title: 'Verify',
                                      isOutlined: false,
                                    )),
                                SizedBox(
                                  height: 25,
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => NavigatorPage()));
                                    },
                                    child: TileButton(
                                      title: 'Resend the code',
                                      isOutlined: true,
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigatorPage()));
                    },
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
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
