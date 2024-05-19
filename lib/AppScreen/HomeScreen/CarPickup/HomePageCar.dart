import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/ModalClasses/CustomButtons.dart';
import 'package:new_project/ModalClasses/ThemeData.dart';

class HomeScreenCar extends StatefulWidget {
  @override
  _HomeScreenCarState createState() => _HomeScreenCarState();
}

class _HomeScreenCarState extends State<HomeScreenCar> {
  List<String> list = [
    'https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg',
    'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg',
    'https://mk0flowerglossarlngi.kinstacdn.com/wp-content/uploads/2017/09/anemone.jpg',
    'https://c4.wallpaperflare.com/wallpaper/298/719/724/5bd2e5c1d84a5-wallpaper-preview.jpg'
  ];
  bool hideRequest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ColumnCard(
                  color: red.withOpacity(0.2),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(
                          'assets/images/dreaming 1.svg',
                          color: red,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        'Unavailable',
                        style: TextStyle(color: red, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ColumnCard(
                  color: green,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(
                          'assets/images/tools 6.svg',
                          color: white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:4),
                      child: Text(
                        'Available',
                        style: TextStyle(color: white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New requests',
                    style: TextStyle(
                      color: black,
                      fontSize: 20,
                    )),
                OutlinedButton(
                  child: Text(
                    'Hidden requests',
                    style: TextStyle(
                      color: blue,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      hideRequest = !hideRequest;
                    });
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 15, horizontal: 11)),
                      side: MaterialStateProperty.all(
                          BorderSide(color: blue, width: 1))),
                )
              ],
            ),
          ),
          hideRequest
              ? Container()
              : Expanded(
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                           UserRequestCard(
                            netWorkImages: list,
                          ),
                          UserRequestCard(title: 'New Car',time: 'Jan 12, 12:30 PM', netWorkImages: list, subject: 'is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less norm',),
                          UserRequestCard(title: 'New Car',time: 'Jan 12, 12:30 PM', netWorkImages: list, subject: 'is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less norm',),
                          SizedBox(
                            height: 80,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
