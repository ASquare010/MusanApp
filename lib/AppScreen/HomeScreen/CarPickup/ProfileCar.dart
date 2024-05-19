import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';

class ProfileCar extends StatefulWidget {
  @override
  _ProfileCarState createState() => _ProfileCarState();
}

class _ProfileCarState extends State<ProfileCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UserProfileCard(),
          UserInfoCard(),
          UserInfoCard.order(title: 'Cities',),
          UserInfoCard(title: 'Car pickup type',description: 'Trucks',),
          UserRateBox(comments: [
            RateAndCommentsContainer(),
            RateAndCommentsContainer(),
          ],)
        ],
      ),
    );
  }
}
