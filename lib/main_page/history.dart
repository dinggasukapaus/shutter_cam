import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Color.fromRGBO(76, 219, 196, 1),
        title: Text("History Order"),
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
        ],
      ),
    );
  }
}
