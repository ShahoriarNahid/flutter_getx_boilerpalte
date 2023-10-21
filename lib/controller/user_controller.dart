import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final count = RxInt(0);

  @override
  void onInit() {
    final receivePort = FlutterForegroundTask.receivePort;

    receivePort!.listen((message) {
      final countValue = message as int;

      count.value = countValue;
    });

    super.onInit();
  }
}
