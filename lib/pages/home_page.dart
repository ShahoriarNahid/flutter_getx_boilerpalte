import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerpalte/base/base.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {
                Base.forgroundService.startForgroundService();
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () async {
                Base.forgroundService.stopForgroundService();
              },
              icon: Icon(Icons.remove),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Center(
                child: Text('${Base.userController.count}'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
