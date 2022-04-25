import 'package:flutter/material.dart';
import 'package:shutter_cam/main_page/profile.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Color.fromRGBO(76, 219, 196, 1),
        title: Text("Your Cart"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 150.0,
            width: 100.0,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(30),
              elevation: 4,
              child: ListTile(
                isThreeLine: true,
                title: Text("Canon EOS 1300D"),
                subtitle: Text("340.000"),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("3000.00"),
                    GestureDetector(
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cart()),
                        );
                      },
                    ),
                  ],
                ),
                onTap: () {},
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
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
              margin: EdgeInsets.all(30),
              elevation: 4,
              child: ListTile(
                isThreeLine: true,
                title: Text("Canon EOS 1300D"),
                subtitle: Text("340.000"),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("3000.00"),
                    GestureDetector(
                      child: Icon(
                        Icons.delete_rounded,
                        color: Colors.red,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                onTap: () {},
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
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
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(76, 219, 196, 1),
                  // minimumSize: const Size.fromHeight(
                  //     50), // fromHeight use double.infinity as width and 40 is the height
                ),
                child: Text('Lanjut pembayaran'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
