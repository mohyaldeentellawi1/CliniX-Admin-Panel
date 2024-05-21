import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsSideBody extends StatefulWidget {
  const MapsSideBody({super.key});

  @override
  State<MapsSideBody> createState() => _MapsSideBodyState();
}

class _MapsSideBodyState extends State<MapsSideBody> {
  GoogleMapController? googleMapController;
  // StreamSubscription<Position>? positionStream;
  List<Marker> markers = [];
  CameraPosition position = const CameraPosition(
    target: LatLng(41.008240, 28.978359),
    zoom: 10,
  );

  // initLocation() async {
  //   bool serviceEnable;
  //   LocationPermission permission;
  //   serviceEnable = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnable) {
  //     print('Servic Loction not enable');
  //     return;
  //   }
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return Future.error('Location Permission are denid');
  //     }
  //   }
  //   if (permission == LocationPermission.whileInUse) {
  //     positionStream =
  //         Geolocator.getPositionStream().listen((Position? position) {
  //       markers.add(Marker(
  //           markerId: const MarkerId('1'),
  //           position: LatLng(position!.latitude, position.longitude)));
  //       googleMapController!.animateCamera(CameraUpdate.newLatLng(
  //           LatLng(position.latitude, position.longitude)));
  //       setState(() {});
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return SizedBox(
        width: width * .5,
        height: height * .72,
        child: GoogleMap(
            onTap: (latLang) async {
              markers.add(Marker(
                  markerId: const MarkerId('1'),
                  position: LatLng(latLang.latitude, latLang.longitude)));
              setState(() {});
            },
            markers: markers.toSet(),
            onMapCreated: (controller) {
              googleMapController = controller;
            },
            mapType: MapType.normal,
            initialCameraPosition: position));
  }
}
