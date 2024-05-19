import 'package:flutter/material.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/CustomTextForm.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';
import 'SignUpComplete.dart';

class WorkShopInfo extends StatelessWidget {
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightGrey,
        leading: BackButton(color: blue,),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: lightGrey,
        child: Column(
          children: [
            Expanded(
                flex: 6,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Workshop info',
                            style: TextStyle(fontSize: 35),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: SingleChildScrollView(
                          child: Form(
                            key: keyForm,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextForm(
                                  hintText: 'Location',
                                ),
                                DropDownButton(
                                  title: 'City',
                                ),
                                DropDownButton(
                                  title: 'Specialization',
                                ),
                                DropDownButton(
                                  title: "industry",
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.camera_alt_outlined,
                                          color: blue,
                                        ),
                                      ),
                                      Text(
                                          'Add pictures of places with availability',
                                          style: TextStyle(color: black)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Center(
                child: InkWell(
                    onTap: () {},
                    child: Text('Terms & Conditions',
                        style: TextStyle(color: blue)))),
            SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignUpComplete()));
                },
                child: TileButton(
                  title: 'Create Account',
                  isOutlined: false,
                )),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
