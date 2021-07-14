import 'package:fitso_app_ui/model/activity.dart';
import 'package:fitso_app_ui/model/sports.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

Widget chipSection(String label) {
  return Chip(
      padding: EdgeInsets.all(4.0),
      elevation: 10.0,
      shadowColor: Colors.white,
      backgroundColor: Colors.white60,
      label: Text(label));
}

Widget appBarSection() {
  return AppBar(
    backgroundColor: bgcolor,
    elevation: 0,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: defaultPadding),
        child: CircleAvatar(
          backgroundColor: Color(0xffffdfbf),
          child: Text(
            "L",
            style: TextStyle(
                fontSize: 20.0, color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      )
    ],
  );
}

class WarningContainer extends StatelessWidget {
  const WarningContainer({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _size.width,
      height: _size.height / 6,
      color: Color.fromRGBO(239, 219, 205, 0.5),
      child: Padding(
        padding: EdgeInsets.all(defaultPadding * 1.3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.redAccent.shade400,
                  child: Icon(
                    Icons.speaker,
                    size: 28.0,
                    color: Colors.white,
                  ),
                )),
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "This is warning message",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    Text(
                      "Centers are now open. You can book new slot for u. ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14.0),
                    ),
                    Row(
                      children: [
                        Text(
                          "Know more",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Colors.red.shade900),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.red.shade900,
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    @required this.heading,
    Key key,
  }) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          Text(
            heading,
            style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class BottomBarSection extends StatelessWidget {
  const BottomBarSection({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(2, 2),
              blurRadius: 3,
              spreadRadius: 1)
        ],
      ),
      height: _size.height / 7,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "Become a member",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "4999 for 3 months",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
                color: Colors.pink,
                onPressed: () {}),
          ),
          SizedBox(
            height: defaultPadding / 3,
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                "Book a free trial session",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.redAccent,
                ),
              ))
        ],
      ),
    );
  }
}

class ChipRowSection extends StatelessWidget {
  const ChipRowSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          chipSection("Within 15 km"),
          chipSection("Within 10 km"),
          chipSection("Within 5 km")
        ],
      ),
    );
  }
}

class SportCategory extends StatelessWidget {
  const SportCategory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: activityList.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              width: 40.0,
              height: 70.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        spreadRadius: 3)
                  ],
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: activityList[index].color,
                      child: Icon(activityList[index].iconData),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "${activityList[index].title}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("${activityList[index].subtitle}")
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}

class SportCenterListView extends StatelessWidget {
  const SportCenterListView({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: sportCenterList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: defaultPadding / 2),
              height: _size.height / 3.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        spreadRadius: 3)
                  ],
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        width: _size.width,
                        child: Image.network(
                            "${sportCenterList[index].imageurl}",
                            fit: BoxFit.cover),
                      )),
                  Expanded(
                    flex: 2,
                    child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding / 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${sportCenterList[index].centerName}",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${sportCenterList[index].rating}",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                            Text("${sportCenterList[index].sports.toList()}")
                          ],
                        )),
                  )
                ],
              ),
            );
          }),
    );
  }
}
