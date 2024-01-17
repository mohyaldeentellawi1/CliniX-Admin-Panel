import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsSideBody extends StatelessWidget {
  const MapsSideBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // double height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      width: width * .3,
      height: 400,
      child: const GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
              target: LatLng(37.42796133580664, -122.085749655962), zoom: 10)),
    );
  }
}
