import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FlutterMap(
          options:
              MapOptions(center: LatLng(-7.552075246107466, 110.8557578657626)),
          layers: [
            TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'],
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(-7.552075246107466, 110.8557578657626),
                  builder: (ctx) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/search');
                    },
                    child: Container(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(-7.542075246107466, 110.8457578657626),
                  builder: (ctx) => Icon(
                    Icons.location_on,
                    color: Colors.blue,
                    size: 24,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
