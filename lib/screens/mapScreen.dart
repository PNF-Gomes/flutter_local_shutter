import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapScreen extends StatefulWidget {
  static const String id = 'mapScreen';
  const MapScreen({
    Key key,
  }) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  void dispose() {
    super.dispose();
  }
  //TODO markers
  Set <Marker> allMarkers = {
    Marker(
      markerId: MarkerId('logo'),
      position: LatLng(40.288196, -7.504253),)
  };

  //TODO async and wait round icon
  @override
  Widget build(BuildContext context) {
    //TODO map view
    return Container(
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
            bearing: 192.8334901395799,
            target: LatLng(40.288196, -7.504253),
            tilt: 59.440717697143555,
            zoom: 19.151926040649414,

        ),

        trafficEnabled: false,


      ),

    );
  }
}


