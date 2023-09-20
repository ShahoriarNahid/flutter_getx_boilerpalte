import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_boilerpalte/pages/right_Drawer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../components/k_appbar.dart';
import '../config/app_theme.dart';
import '../config/constants.dart';
import '../controller/menu_controller.dart';
import '../helper/render_svg.dart';
import 'left_drawer.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final menuC = Get.put(MenuController1());
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
              Icons.add_home,
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
              children: menuC.bottomMenus
                  .map(
                    (item) => GestureDetector(
                      onTap: () {
                        if (menuC.getMenuIndex(item) == 2) {
                          // searchLocationBottomSheet();
                        } else {
                          menuC.setCurrentIndex = item;
                        }
                      },
                      child: SvgPicture.asset(
                        '${Constants.svgPath}/$item',
                        color: menuC.getMenuIndex(item) == 0
                            ? Colors.transparent
                            : menuC.getMenuIndex(item) == 1
                                ? null
                                : menuC.currentIndex.value == menuC.getMenuIndex(item)
                                    ? AppTheme.color2
                                    : AppTheme.color6,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          body: menuC.getCurrentPage(),
        ),
      ),
    );
  }
}
