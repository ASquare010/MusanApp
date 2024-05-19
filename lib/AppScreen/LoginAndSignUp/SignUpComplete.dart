import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/AppScreen/HomeScreen/CarPickup/NavigatorPage.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';

class SignUpComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width / 2,
              child: Image.asset('assets/images/mussan logo .png'),
            ),
          ),
          Container(
            color: black.withOpacity(0.8),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: white),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Center(
                          child: SvgPicture.asset(
                              'assets/images/finishManWithTick.svg')),
                      Center(
                        child: Text(
                          'Congratulations',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Text(
                          'you have complected all steps successfully. Please wait for up to',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigatorPage()));
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(blue),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 5),
                              child: Text(
                                'Confirm',
                                style: TextStyle(color: white),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
