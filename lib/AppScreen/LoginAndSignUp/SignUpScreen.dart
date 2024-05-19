import 'package:flutter/material.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/CustomTextForm.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';

import 'LogInScreen.dart';
import 'WorkShopInfo.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                flex: 5,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(bottom: 15),

                          child: Text(
                            'Create an Account',
                             style: TextStyle(fontSize: 35),
                             textAlign: TextAlign.center,
                           ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SingleChildScrollView(
                          child: Form(
                            key: keyForm,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 CustomTextForm(
                                  hintText: 'E-mail',
                                ),
                                CustomTextForm(
                                  hintText: 'Mobile number',
                                  keyBordType: TextInputType.phone,
                                ),
                                CustomTextForm(
                                  hintText: 'Workshop Name',
                                  keyBordType: TextInputType.text,
                                ),
                                SizedBox(height: 30,),
                                InkWell(
                                    onTap: () {
                                      // if (keyForm.currentState.validate()) {
                                      //
                                      // }
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => WorkShopInfo()));
                                    },
                                    child: TileButton(
                                      title: 'Create Account', isOutlined: false,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                      style: TextStyle(color: black, fontSize: 16)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInScreen()));
                      },
                      child: Text(
                        'LOG IN',
                        style: TextStyle(
                            color: blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
