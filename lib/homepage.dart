import 'package:fitso_app_ui/constants.dart';
import 'package:fitso_app_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> imageList = [
    'https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=840&q=80',
    'https://images.unsplash.com/photo-1446292532430-3e76f6ab6444?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=804&q=80'
  ];

  int _currentIndex = 0;
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBarSection(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            WarningContainer(size: _size),
            SizedBox(
              height: defaultPadding,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Container(
                            //color: Colors.green,
                            width: _size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0)),
                            margin: EdgeInsets.symmetric(
                                horizontal: defaultPadding / 2),
                            child: Image.network(
                              item,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      pauseAutoPlayInFiniteScroll: true,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      reverse: false,
                      autoPlay: true,
                      height: 200.0,
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            _currentIndex = index;
                          },
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.map((urlOfItem) {
                    int index = imageList.indexOf(urlOfItem);
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Color.fromRGBO(0, 0, 0, 0.8)
                            : Color.fromRGBO(0, 0, 0, 0.3),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: defaultPadding,
            ),
            HeadingSection(heading: "Explore products around you"),
            ChipRowSection(),
            SizedBox(
              height: defaultPadding,
            ),
            SportCategory(),
            SizedBox(
              height: defaultPadding,
            ),
            HeadingSection(heading: "Take a look around you "),
            SizedBox(
              height: defaultPadding,
            ),
            SportCenterListView(size: _size)
          ],
        )),
      ),
      bottomNavigationBar: BottomBarSection(size: _size),
    );
  }
}
