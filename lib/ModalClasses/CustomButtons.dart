import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ThemeData.dart';

class TileButton extends StatelessWidget {
  final String title;
  final bool isOutlined;

  const TileButton({this.title, this.isOutlined});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.93,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: isOutlined
              ? Border.all(
                  width: 1,
                  color: blue,
                )
              : Border.all(width: 0, color: Colors.transparent),
          boxShadow: isOutlined
              ? [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.0),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 6,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
          color: isOutlined ? Colors.transparent : blue,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Text(
        title,
        style: TextStyle(color: isOutlined ? blue : white, fontSize: 16),
      ),
    );
  }
}

class DropDownButton extends StatelessWidget {
  final String title;
  final bool isOpen = false;

  const DropDownButton({this.title = 'Workshop'});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
      child: DropdownMenuItem(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 6,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ], color: white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(color: black),
                ),
                isOpen
                    ? Icon(
                        Icons.keyboard_arrow_up,
                        color: black,
                      )
                    : Icon(
                        Icons.keyboard_arrow_down,
                        color: black,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final color;
  final Function onTap;

  const RoundedIconButton({
    Key key,
    this.color = Colors.black,
    this.icon = Icons.notifications_active_outlined,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 6,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ], color: white, borderRadius: BorderRadius.circular(10)),
        child: IconButton(
            icon: Icon(
              icon,
              color: color,
              size: 30,
            ),
            onPressed: onTap));
  }
}

class SelectAccountButton extends StatelessWidget {
  final String svg, title;
  final bool isSelected;

  SelectAccountButton({this.svg = 'assets/images/tools 6.svg', this.title = 'Tool', this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: isSelected ? blue : white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 6,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: SvgPicture.asset(svg),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          )
        ],
      ),
    );
  }
}

///Remember Padding to all the child individual Else No Child Will Render in ColumnCard
class ColumnCard extends StatelessWidget {
  final Color color;
  final List<Widget> children;

  const ColumnCard({
    this.color,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 6,
          offset: Offset(0, 0), // changes position of shadow
        ),
      ], color: color, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }
}

class UserRequestCard extends StatefulWidget {
  final String disruption;

  final String title;
  final bool isImagesShown;
  final String subject;
  final String time;
  final List<String> netWorkImages;

  UserRequestCard(
      {this.title = 'Awaisamin',
      this.disruption =
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using  making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
      this.time = 'Jan 12, 12:30 PM',this.isImagesShown = true ,
      @required this.netWorkImages,
      this.subject = 'Broken Window '});

  bool isOpen = false, hideDisruption = true;

  @override
  _UserRequestCardState createState() => _UserRequestCardState(title, disruption, subject, time, netWorkImages,isImagesShown);
}

class _UserRequestCardState extends State<UserRequestCard> {
  final String subject;
  final String disruption;
  final bool isImagesShown;
  final String title;

  final String time;

  final List<String> netWorkImages;

  bool isOpen = false, hideDisruption = true;

  _UserRequestCardState(this.title, this.disruption, this.subject, this.time, this.netWorkImages,this.isImagesShown);

  List<Widget> imageListMaker() {
    List<Widget> imageList = [];
    for (int i = 0; i < netWorkImages.length; i++) {
      imageList.add(Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 100,
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(netWorkImages[i]), fit: BoxFit.fill)),
      ));
    }
    return imageList;
  }

  @override
  Widget build(BuildContext context) {
    return ColumnCard(color: white, children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Text(title,
                    style: TextStyle(
                      color: blue,
                      fontSize: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(time,
                    style: TextStyle(
                      color: blue,
                    )),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Text(subject,
                    style: TextStyle(
                      color: black,
                    )),
              ),
            ),
          ],
        ),
      ),
      Row(
        children: [
          isOpen
              ? Container()
              : Container(
                  height: 30,
                  width: 1,
                  color: blue,
                ),
          Expanded(
            child: ExpansionTile(
              onExpansionChanged: (val) {
                setState(() {
                  isOpen = val;
                });
              },
              title: Text(
                disruption.replaceRange(30, disruption.length, '...'),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              children: [
                Semantics(
                  container: true,
                  selected: hideDisruption,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    height: hideDisruption ? 0 : 150,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), border: Border.all(width: 1, color: grey)),
                    child: SingleChildScrollView(
                      child: Text(
                        disruption,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
                hideDisruption
                    ? SizedBox()
                    : SizedBox(
                        height: 20,
                      ),
               isImagesShown ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: imageListMaker(),
                    )) :Container(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        child: Text(
                          'Hide disruption',
                          style: TextStyle(
                            color: blue,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            hideDisruption = !hideDisruption;
                          });
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                            side: MaterialStateProperty.all(BorderSide(color: blue, width: 1))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: lightGrey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RoundedIconButton(
              icon: Icons.close,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Spacer(),
            RoundedIconButton(
              color: red,
              icon: Icons.logout,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoCard extends StatelessWidget {
  String title, description, time, cost, distance;
  bool isOrderCard, isCompleted;

  UserInfoCard({this.title = 'Yole', this.description = 'Londor,Ringed city,', this.isOrderCard = false});

  UserInfoCard.order(
      {this.title = 'Mercedes Benz',
      this.isOrderCard = true,
      this.time = 'Jan 20 2021',
      this.distance = '20',
      this.cost = '\$200',
      isCompleted = false});

  @override
  Widget build(BuildContext context) {
    return ColumnCard(
      color: white,
      children: [
        isOrderCard? Container(): SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child:
                      Text(title, style: TextStyle(color: isOrderCard ? blue : black, fontSize: isOrderCard ? 20 : 14)),
                ),
              ),
              isOrderCard
                  ? Container(
                      alignment: Alignment.centerLeft,
                      child: Text(time,
                          style: TextStyle(
                            color: blue,
                          )),
                    )
                  : Container(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              isOrderCard
                  ? Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(cost, style: TextStyle(color: blue, fontSize: 20)),
                      ),
                    )
                  : Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(description,
                            style: TextStyle(
                              color: blue,
                              fontSize: 20,
                            )),
                      ),
                    ),
              isOrderCard
                  ? Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text('$distance Km',
                            style: TextStyle(color: yellow, fontSize: 20, fontWeight: FontWeight.w300)),
                      ),
                    )
                  : Container(),
              isOrderCard
                  ? Expanded(
                      child: IsProgressCompleted(
                        isCompleted: false,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
        isOrderCard? Container(): SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class UserProfileCard extends StatelessWidget {
  final String title;
  final String imageLink;
  final int rate;

  const UserProfileCard(
      {this.title = 'Car Pickup Name',
      this.imageLink =
          'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg',
      this.rate = 4});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(color: blue, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          title,
                          style: TextStyle(color: white, fontSize: 23),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              UserRateBar(
                                rate: 4,
                              ),
                              Text(
                                '  $rate/5',
                                style: TextStyle(color: yellow),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              )),
          Expanded(
              flex: 3,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    image: DecorationImage(image: NetworkImage(imageLink), fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class UserRateBar extends StatelessWidget {
  final double rate;
  final bool ignoreGestures;

  const UserRateBar({this.rate, this.ignoreGestures = true});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rate,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: false,
      unratedColor: lightGrey,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      ignoreGestures: ignoreGestures,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: yellow,
      ),
      itemSize: 20,
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}

class IsProgressCompleted extends StatelessWidget {
  final bool isCompleted;

  const IsProgressCompleted({@required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    if (isCompleted) {
      return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: green.withOpacity(0.2),
            borderRadius: BorderRadius.horizontal(right: Radius.circular(30), left: Radius.circular(30))),
        alignment: Alignment.center,
        child: Text('Completed', style: TextStyle(color: green, fontSize: 20, fontWeight: FontWeight.w300)),
      );
    } else {
      return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: yellow.withOpacity(0.2),
            borderRadius: BorderRadius.horizontal(right: Radius.circular(30), left: Radius.circular(30))),
        alignment: Alignment.center,
        child: Text('In progress', style: TextStyle(color: yellow, fontWeight: FontWeight.w300)),
      );
    }
  }
}

class UserRateBox extends StatelessWidget {
  final List<Widget> comments;

  const UserRateBox({@required this.comments}) ;

  @override
  Widget build(BuildContext context) {

    return ColumnCard(
      color: white,
      children:[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text('Comments & Rates'),
          ),
        ),
        Column(children: comments,)
      ],
    );
  }
}

class RateAndCommentsContainer extends StatelessWidget {
  final String description, title, time;
  final double rate;

  const RateAndCommentsContainer(
      {this.title = 'Client Name',
      this.time = '12 Aug 2020',
      this.description =
          'It is a long established fact that a reader will be mal distribution of letters, as opposed to using  making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
      this.rate = 4});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(title,
                          style: TextStyle(
                            fontSize: 20,
                            color: blue,
                          )),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: UserRateBar(
                      rate: rate,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  description,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  time,
                  style: TextStyle(color: grey),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
