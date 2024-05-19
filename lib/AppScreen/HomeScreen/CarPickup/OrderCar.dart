import 'package:flutter/material.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';

class OrderCar extends StatefulWidget {
  @override
  _OrderCarState createState() => _OrderCarState();
}

class _OrderCarState extends State<OrderCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Your Order',
                style: TextStyle(color: black, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ], color: white, borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            padding: const EdgeInsets.all(4),

            child :  Row(

              children: [
                Expanded(
                  child: TextButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sort',style: TextStyle(color: black),),
                      Icon(Icons.keyboard_arrow_down,color: black,)
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(color: black,height: 20,width: 1,),
                ),
                Expanded(
                  child: TextButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text('Filter',style: TextStyle(color: black)),
                      Icon(Icons.keyboard_arrow_down,color: black,)
                    ],
                  )),
                ),],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => UserInfoCard.order(
              title: 'Cities',
            ),
          ))
        ],
      ),
    );
  }
}
