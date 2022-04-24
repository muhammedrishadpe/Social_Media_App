import "package:flutter/material.dart";
import 'package:socialmediaapp/pages/chat_page.dart';
import 'package:socialmediaapp/pages/home_page.dart';
import 'dart:math' as math;
import '../theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTap = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: getFloatingButton(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTap,
      children: [
        HomePage(),
        ChatPage(),
        Center(
          child: Text("Upload"),
        ),
        Center(
          child: Text("Save"),
        ),
        Center(
          child: Text("Profile"),
        ),
      ],
    );
  }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 20,
            offset: Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activeTap = 0;
                    });
                  },
                  child: Icon(
                    Icons.home,
                    size: 25,
                    color: activeTap == 0 ? primary : black,
                  ),
                ),
                SizedBox(
                  width: 55,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activeTap = 1;
                    });
                  },
                  child: Icon(
                    Icons.chat_bubble_outline,
                    size: 25,
                    color: activeTap == 1 ? primary : black,
                  ),
                ),
                SizedBox(
                  width: 55,
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activeTap = 3;
                    });
                  },
                  child: Icon(
                    Icons.heart_broken,
                    size: 25,
                    color: activeTap == 3 ? primary : black,
                  ),
                ),
                SizedBox(
                  width: 55,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activeTap = 4;
                    });
                  },
                  child: Icon(
                    Icons.account_circle,
                    size: 25,
                    color: activeTap == 4 ? primary : black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getFloatingButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          activeTap = 2;
        });
      },
      child: Transform.rotate(
        angle: -math.pi / 4,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 1),
              ),
            ],
            color: black,
            borderRadius: BorderRadius.circular(23),
          ),
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: Center(
              child: Icon(
                Icons.add_circle_outline,
                color: white,
                size: 26,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
