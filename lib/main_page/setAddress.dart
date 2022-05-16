import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SetAddres extends StatefulWidget {
  const SetAddres({Key? key}) : super(key: key);

  @override
  State<SetAddres> createState() => _SetAddresState();
}

class _SetAddresState extends State<SetAddres> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-8.171734768465152, 113.69862726749267);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Atur Alamat'),
          backgroundColor: Colors.green[700],
        ),
        body: Container(
          width: 300,
          height: 300,
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
        ),
      ),
    );
  }
}
