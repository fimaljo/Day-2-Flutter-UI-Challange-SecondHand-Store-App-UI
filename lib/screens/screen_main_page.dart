import 'package:day_2_secondhand_store_app/screens/screen.home.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int pageIndex = 0;
  final pages = [
    ScreenHome(),
    ScreenHome(),
    ScreenHome(),
    ScreenHome(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[pageIndex],
      bottomNavigationBar: buildNavBar(size, context),
    );
  }

  Container buildNavBar(Size size, BuildContext context) {
    return Container(
      width: size.width,
      height: 67,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.transparent),
      child: Container(
        width: size.width,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: pageIndex == 0 ? Colors.black : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              splashColor: Colors.white,
            ),
            // Container(
            //   width: size.width * 0.20,
            // ),
            IconButton(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: pageIndex == 1 ? Colors.black : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(5)),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                  //  pageIndex == 0
                  //     ? Colors.black
                  //     : Colors.grey.shade400,
                ),
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                splashColor: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: pageIndex == 3 ? Colors.black : Colors.grey,
                //pageIndex == 0 ? Colors.black : Colors.grey.shade400,
              ),
              onPressed: () {
                // setState(() {
                //   pageIndex = 0;
                // });
              },
              splashColor: Colors.white,
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: pageIndex == 4 ? Colors.black : Colors.grey,
                //pageIndex == 0 ? Colors.black : Colors.grey.shade400,
              ),
              onPressed: () {
                // setState(() {
                //   pageIndex = 0;
                // });
              },
              splashColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
