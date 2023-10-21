import 'dart:isolate';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:flutter_getx_boilerpalte/helper/k_log.dart';
import 'package:get/get.dart';

@pragma('vm:entry-point')
void startLocationCallback() {
  FlutterForegroundTask.setTaskHandler(MyLocationServiceHandler());
}

class ForgroundService extends GetxService {
  @override
  void onInit() {
    initForegroundTask();
    super.onInit();
  }

  void initForegroundTask() {
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        buttons: [
          NotificationButton(id: 'STOP', text: 'Stop'),
          NotificationButton(
            id: 'RESEUME',
            text: 'Resume',
          )
        ],
        channelId: 'foreground_service',
        channelName: 'Foreground Service Notification',
        channelDescription: 'This notification appears when the foreground service is running.',
        channelImportance: NotificationChannelImportance.NONE,
        priority: NotificationPriority.LOW,
        iconData: NotificationIconData(
          resType: ResourceType.mipmap,
          resPrefix: ResourcePrefix.ic,
          name: 'launcher',
        ),
        isSticky: true,
        visibility: NotificationVisibility.VISIBILITY_PUBLIC,
      ),
      iosNotificationOptions: IOSNotificationOptions(
        showNotification: true,
        playSound: false,
      ),
      foregroundTaskOptions: ForegroundTaskOptions(
        interval: 1000,
        isOnceEvent: false,
        autoRunOnBoot: true,
        allowWakeLock: true,
        allowWifiLock: true,
      ),
    );

    klog('initForegroundTask Init completed');
  }

  void startForgroundService() async {
    FlutterForegroundTask.startService(
      notificationTitle: 'My Location Tracker Service',
      notificationText: 'This Service will listen your location',
      callback: startLocationCallback,
    );
  }

  void stopForgroundService() {
    FlutterForegroundTask.stopService();
  }
}

class MyLocationServiceHandler extends TaskHandler {
  int count = 0;
  @override
  void onStart(DateTime timestamp, SendPort? sendPort) async {}

  @override
  void onRepeatEvent(DateTime timestamp, SendPort? sendPort) async {
    count++;
    sendPort!.send(count);

    await FlutterForegroundTask.updateService(
      notificationTitle: 'Your Duty has started',
      notificationText: 'Your count time $count',
    );
  }

  @override
  void onNotificationButtonPressed(String id) async {
    super.onNotificationButtonPressed(id);

    switch (id) {
      case 'STOP':
        await FlutterForegroundTask.stopService();
        break;
      case 'RESEUME':
        klog('Reseume button Clicked');
    }
  }

  @override
  void onNotificationPressed() {
    // TODO: implement onNotificationPressed

    super.onNotificationPressed();
  }

  @override
  void onDestroy(DateTime timestamp, SendPort? sendPort) async {
    klog('onDestroy called');
  }
}
