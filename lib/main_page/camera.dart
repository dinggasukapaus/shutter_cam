import 'package:flutter/material.dart';
import 'package:shutter_cam/main_page/cart.dart';
import 'package:shutter_cam/main_page/rentMore.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: const Color.fromRGBO(76, 219, 196, 1),
        title: const Text("Kamera"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 150.0,
            width: 100.0,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(30),
              elevation: 4,
              child: ListTile(
                isThreeLine: true,
                title: const Text("Canon EOS 1300D"),
                subtitle: const Text("340.000"),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text("3000.00"),
                    GestureDetector(
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      // aksi untuk favorite
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Cart()),
                        );
                      },
                    ),
                  ],
                ),
                // aksi untuk card
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RentMore()),
                  );
                },
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 150,
                    minHeight: 100,
                    maxWidth: 150,
                    maxHeight: 100,
                  ),
                  child: Image.asset("assets/images/camera1.jpg",
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 150.0,
            width: 100.0,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(30),
              elevation: 4,
              child: ListTile(
                isThreeLine: true,
                title: const Text("Canon EOS 1300D"),
                subtitle: const Text("340.000"),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text("3000.00"),
                    GestureDetector(
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                onTap: () {},
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 150,
                    minHeight: 100,
                    maxWidth: 150,
                    maxHeight: 100,
                  ),
                  child: Image.asset("assets/images/camera1.jpg",
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
