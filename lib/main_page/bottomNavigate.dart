import 'package:flutter/material.dart';

import 'package:shutter_cam/main_page/camera.dart';
import 'package:shutter_cam/main_page/profile.dart';
import 'package:shutter_cam/main_page/dashboard.dart';
import 'package:shutter_cam/main_page/history.dart';
import 'package:shutter_cam/main_page/cart.dart';
import 'package:shutter_cam/main_page/profile.dart';

class BottomNavigate extends StatefulWidget {
  const BottomNavigate({Key? key}) : super(key: key);

  @override
  State<BottomNavigate> createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  int currentIndex = 0;
  final screens = [
    Dashboard(),
    History(),
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   shadowColor: Colors.transparent,
      //   backgroundColor: Color.fromRGBO(76, 219, 196, 1),
      //   leading: Padding(
      //     padding: EdgeInsets.only(
      //       left: 18.0,
      //       top: 12.0,
      //       bottom: 12.0,
      //       right: 12.0,
      //     ),
      //     child: Icon(
      //       Icons.menu,
      //       color: Colors.black,
      //       size: 30.0,
      //     ),
      //   ),
      //   actions: [
      //     Row(
      //       children: [
      //         Text("user"),
      //         IconButton(
      //             icon: Image.asset(
      //               'assets/icons/gamer.png',
      //               height: 30.0,
      //               width: 30.0,
      //             ),
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => const Camera()),
      //               );
      //             }),
      //       ],
      //     ),
      //     SizedBox(
      //       width: 18.0,
      //     )
      //   ],
      // ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                height: 30.0,
                width: 30.0,
              ),
              label: 'home',
              backgroundColor: Color.fromRGBO(225, 208, 91, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/My order.png',
                height: 30.0,
                width: 30.0,
              ),
              label: 'History',
              backgroundColor: Color.fromRGBO(225, 208, 91, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/cart.png',
                height: 30.0,
                width: 30.0,
              ),
              label: 'Cart',
              backgroundColor: Color.fromRGBO(225, 208, 91, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/profile.png',
                height: 30.0,
                width: 30.0,
              ),
              label: 'Profile',
              backgroundColor: Color.fromRGBO(225, 208, 91, 1),
            ),
          ]),
    );
  }
}
