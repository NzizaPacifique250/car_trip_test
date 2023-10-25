import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:swiphr_test/features/widget/screen%201/header_widget.dart';
import 'package:swiphr_test/features/widget/screen%201/location_box.dart';
import 'package:swiphr_test/features/widget/screen%201/make_ride_order.dart';

class ChooseVehiclePage extends StatefulWidget {
  const ChooseVehiclePage({super.key});

  @override
  State<ChooseVehiclePage> createState() => _ChooseVehiclePageState();
}

class _ChooseVehiclePageState extends State<ChooseVehiclePage> {
  static const LatLng sourceLocation = LatLng(30.14690, -1.92856);
  static const LatLng destination = LatLng(30.15020, -1.92925);
  List<LatLng> polylineCoordinates = [];
  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        'API_KEY',
        PointLatLng(sourceLocation.latitude, destination.longitude),
        PointLatLng(destination.latitude, destination.longitude));
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        );
      }
      setState(() {});
    }
  }

  @override
  void initState() {
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: 469.w,
              height: 712.h,
              child: GoogleMap(
                initialCameraPosition:
                    const CameraPosition(target: sourceLocation, zoom: 16),
                markers: {
                  const Marker(
                      markerId: MarkerId('source'), position: sourceLocation),
                  const Marker(
                      markerId: MarkerId('destination'), position: destination),
                },
                polylines: {
                  Polyline(
                    polylineId: const PolylineId('source'),
                    points: polylineCoordinates,
                    color: Colors.red,
                    width: 6,
                  )
                },
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.white, spreadRadius: 6),
                BoxShadow(
                    blurRadius: 20,
                    color: Colors.white,
                    blurStyle: BlurStyle.inner,
                    spreadRadius: -5),
              ]),
            ),
            const Header(),
            const TripRoad(),
            const RideOrderBox()
          ],
        ),
      ),
    );
  }
}
