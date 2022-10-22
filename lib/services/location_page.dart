import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  String? _currentAddress;
  Position? _currentPosition;

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
      _getAddressFromLatLng(_currentPosition!);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  //LatLng(37.42796133580664, -122.085749655962);

  GoogleMapController? mapcontroller;
  var currentLocation = const LatLng(37.42796133580664, -122.085749655962);

  final Map<String, Marker> _marker = {};

  addMarker(String id, LatLng position) {
    var marker = Marker(markerId: MarkerId(id), position: position);
    _marker[id] = marker;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
            _getCurrentPosition();
            if (_currentPosition != null) {
              LatLng newMarkervalue = LatLng(
                  _currentPosition!.latitude, _currentPosition!.longitude);
              mapcontroller!.animateCamera(CameraUpdate.newCameraPosition(
                  CameraPosition(
                      target: LatLng(_currentPosition!.latitude,
                          _currentPosition!.longitude),
                      zoom: 16)));
              addMarker("test", newMarkervalue);
            }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition:
              CameraPosition(target: currentLocation, zoom: 14),
          onMapCreated: (GoogleMapController controller) {
            mapcontroller = controller;
            addMarker("test", currentLocation);
          },
          markers: _marker.values.toSet(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Your Location'),
          icon: const Icon(Icons.directions_boat),
          onPressed: () {
            _getCurrentPosition();
            if (_currentPosition != null) {
              LatLng newMarkervalue = LatLng(
                  _currentPosition!.latitude, _currentPosition!.longitude);
              mapcontroller!.animateCamera(CameraUpdate.newCameraPosition(
                  CameraPosition(
                      target: LatLng(_currentPosition!.latitude,
                          _currentPosition!.longitude),
                      zoom: 16)));
              addMarker("test", newMarkervalue);
            }
          }),
    );
  }
}
