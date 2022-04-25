import 'package:flutter/material.dart';
import 'package:shutter_cam/main_page/camera.dart';
import 'package:shutter_cam/main_page/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  final screens = [
    Camera(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Color.fromRGBO(76, 219, 196, 1),
        leading: Padding(
          padding: EdgeInsets.only(
            left: 18.0,
            top: 12.0,
            bottom: 12.0,
            right: 12.0,
          ),
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        actions: [
          Row(
            children: [
              Text("user"),
              IconButton(
                  icon: Image.asset(
                    'assets/icons/gamer.png',
                    height: 30.0,
                    width: 30.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  }),
            ],
          ),
          SizedBox(
            width: 18.0,
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .4,
            color: Color.fromRGBO(76, 219, 196, 1),
          ),
          Column(
            children: [
              Container(
                  height: 80,
                  child: Row(
                    children: [Text("")],
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: GridView.count(
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              primary: false,
              crossAxisCount: 2,
              children: [
                Card(
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/camera.png",
                        height: 128,
                        width: 128,
                      ),
                      Text("Kamera")
                    ],
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/camera.png",
                        height: 128,
                        width: 128,
                      ),
                      Text(
                        "Drone",
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/camera.png",
                        height: 128,
                        width: 128,
                      ),
                      Text("Kamera")
                    ],
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/camera.png",
                        height: 128,
                        width: 128,
                      ),
                      Text("Kamera")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
