import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/AppScreen/HomeScreen/CarPickup/HomePageCar.dart';
import 'package:new_project/AppScreen/HomeScreen/CarPickup/ProfileCar.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';

import 'OrderCar.dart';

class NavigatorPage extends StatefulWidget {
  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    HomeScreenCar(),
    OrderCar(),
    ProfileCar(),
    Center(
      child: Text(
        'Index 3: Settings',
        style: optionStyle,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> _barItemList() {
      List icon = [
        SvgPicture.asset('assets/images/home (4) 1.svg',color: black,),
        SvgPicture.asset('assets/images/list (2) 1.svg',color: black,),
         SvgPicture.asset('assets/images/suitcase 1.svg',color: black,),
        SvgPicture.asset('assets/images/phone-call (2) 1.svg',color: black,),
      ];
      List<String> label = ['Home', 'Order', 'Profile', 'Help'];
      List selectedIcon = [
        SvgPicture.asset('assets/images/home (4) 1.svg',color: blue,),
        SvgPicture.asset('assets/images/list (2) 1.svg',color: blue,),
        SvgPicture.asset('assets/images/suitcase 1.svg',color: blue,),
        SvgPicture.asset('assets/images/phone-call (2) 1.svg',color: blue,),
      ];
      List<BottomNavigationBarItem> barItem = [];
      for (int inx = 0; inx < _widgetOptions.length; inx++) {
        barItem.add(BottomNavigationBarItem(icon: icon[inx], label: label[inx], activeIcon: selectedIcon[inx]));
      }

      return barItem;
    }

    return SafeArea(
      child: Scaffold(
        drawer: DrawerMenu(),
        key: scaffoldKey,
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 6,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ], color: white, borderRadius: BorderRadius.circular(10)),
          child: BottomNavigationBar(
            selectedItemColor: blue,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            currentIndex: _currentIndex,
            elevation: 0,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            unselectedItemColor: black,
            items: _barItemList(),
          ),
        ),
        backgroundColor: lightGrey,
        extendBody: true,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedIconButton(
                  onTap: () {},
                ),
                RoundedIconButton(
                  onTap: () => scaffoldKey.currentState.openDrawer(),
                  icon: Icons.menu,
                )
              ],
            ),
            Expanded(child: _widgetOptions.elementAt(_currentIndex)),
          ],
        ),
      ),
    );
  }}


