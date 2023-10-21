import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_boilerpalte/helper/k_text.dart';
import '../base/base.dart';
import '../helper/hex_color.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Base.configController;
    _updateAppbar();

    super.initState();
  }

  void _updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: hexToColor('#33a0da').withOpacity(0.1),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ));
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // hexToColor('#33A0DA'),
              hexToColor('#AFD6EB'),
              // hexToColor('#FFFFFF'),
              hexToColor('#FFFFFF'),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              KText(
                text: 'Splash Screen',
                fontSize: 30,
                bold: true,
                color: Colors.amberAccent,
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   margin: EdgeInsets.only(right: 30),
              //   child: RenderImg(
              //     path: 'splash_banner.png',
              //     width: 300,
              //   ),
              // ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
