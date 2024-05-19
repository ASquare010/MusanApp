import 'package:flutter/material.dart';
import 'package:new_project/AppScreen/LoginAndSignUp/LogInScreen.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';

import 'SignUpScreen.dart';

class SelectProviderAccount extends StatefulWidget {
  @override
  _SelecProviderAccountState createState() => _SelecProviderAccountState();
}

class _SelecProviderAccountState extends State<SelectProviderAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightGrey,
        leading: BackButton(color: blue,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(child:SelectAccountButton(title: 'Workshop',svg: 'assets/images/tools 6.svg',isSelected: false,)),
                    Expanded(child:SelectAccountButton(title: 'Tech',svg: 'assets/images/Tech.svg' ,isSelected: false,)),
                    Expanded(child: SelectAccountButton(title: 'Pickup Car',svg: 'assets/images/Delivery.svg',isSelected: true,)),
                  ],
                )),
            Expanded(child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()));
                      },
                      child: TileButton( isOutlined: false, title: 'Next',)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                )
               ],
            )),
          ],
        ),
      ),
    );
  }
}
