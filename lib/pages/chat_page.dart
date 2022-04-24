// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socialmediaapp/data/user_json.dart';
import 'package:socialmediaapp/theme/colors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(0),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: white,
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Messages",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: Offset(0, 1))
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: TextField(
                      cursorColor: black,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for contacts"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: grey.withOpacity(0.15),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: Offset(0, 1))
                ],
                color: white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(33),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(color: black)),
                    child: Center(
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: NetworkImage(usersList[0]['img']),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(usersList[0]['name']),
                      SizedBox(
                        height: 5,
                      ),
                      Text(usersList[0]['message'])
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
