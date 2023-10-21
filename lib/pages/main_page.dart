import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_boilerpalte/pages/right_Drawer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../base/base.dart';
import '../components/k_appbar.dart';
import '../config/app_theme.dart';
import '../config/constants.dart';

import 'left_drawer.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ],
    );
    SystemChrome.restoreSystemUIOverlays();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        onWillPop: () async => true,
        child: Scaffold(
          floatingActionButton: InkWell(
            onTap: (() {
              Get.changeThemeMode(ThemeMode.light);
            }),
            child: Icon(
              Icons.account_balance_wallet_rounded,
              size: 30,
            ),
            // child: RenderSvg(
            //   height: 70,
            //   width: 70,
            //   fit: BoxFit.cover,
            //   path: 'attend',
            // ),
          ),
          drawer: LeftDrawer(),
          endDrawer: RightDrawer(),
          appBar: KAppbar(),
          bottomNavigationBar: Container(
            color: AppTheme.appbarColor,
            height: 82,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: Base.menuController.bottomMenus
                  .map(
                    (item) => GestureDetector(
                      onTap: () {
                        Base.menuController.setCurrentIndex = item;
                        //   if (Base.menuController.getMenuIndex(item) == 4) {
                        //     // searchLocationBottomSheet();
                        //   } else {
                        //     Base.menuController.setCurrentIndex = item;
                        //   }
                      },

                      // child: SvgPicture.asset(
                      //   '${Constants.svgPath}/$item',
                      //   colorFilter: ColorFilter.mode(AppTheme.color2, BlendMode.srcIn),
                      // ),
                      child: SvgPicture.asset(
                        '${Constants.svgPath}/$item',
                        color: Base.menuController.currentIndex.value == Base.menuController.getMenuIndex(item)
                            ? AppTheme.color2
                            : AppTheme.color6,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          body: Base.menuController.getCurrentPage(),
        ),
      ),
    );
  }
}
