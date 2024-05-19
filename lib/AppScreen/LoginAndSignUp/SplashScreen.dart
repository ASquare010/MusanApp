import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project/ModalClasses/SplachScreenClass.dart';

import 'OnBoardingScreen.dart';

class AppSplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 3,
        navigateAfterSeconds:  OnBoardingScreen(),
        title:   Text('Welcome!',style: TextStyle(fontSize: 30,),),
        image:   Image.asset('assets/images/mussan logo .png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader:   TextStyle(),
        photoSize: 180.0,
        loaderColor: Colors.transparent,
      loadingText: Text('Loading'),
     );
  }
}
