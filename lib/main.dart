import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'controller/config_controller.dart';


// late List<CameraDescription> cameras;
// const taskName = 'firstTask';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await Get.put(ConfigController()).initAppConfig();
  // cameras = await availableCameras();
  runApp(App());
}
