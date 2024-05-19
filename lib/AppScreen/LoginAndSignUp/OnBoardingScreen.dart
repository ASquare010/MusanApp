import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/AppScreen/LoginAndSignUp/LogInScreen.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';

class OnBoardingScreen extends StatelessWidget {

  var headerText =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogInScreen()));
            },
            child: Text('Skip',
                style: TextStyle(
                    color: white, fontSize: 18, fontWeight: FontWeight.w400)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 6,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  'assets/images/carJeepBike.svg',
                  fit: BoxFit.contain,
                ),
              )),
          Expanded(
              child: Text(
            'Header Text',
            style: TextStyle(fontSize: 25, color: white),
          )),
          Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                             headerText,
                              style: TextStyle(color: black, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: InkWell(
                    onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInScreen()));
                    },
                    child: TileButton(title: 'Understand' ,isOutlined: false,),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );

  }
}
