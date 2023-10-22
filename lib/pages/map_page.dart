import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfMaps(
          layers: [
            MapTileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              initialFocalLatLng: MapLatLng(
                23.773173,
                90.4113134,
              ),
              initialZoomLevel: 15,
              zoomPanBehavior: MapZoomPanBehavior(
                enableDoubleTapZooming: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
