import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_theme.dart';
import '../controller/menu_controller.dart';
import '../helper/hex_color.dart';
import '../helper/k_text.dart';
import '../helper/render_svg.dart';

class RightDrawer extends StatelessWidget {
  final menuC = Get.put(MenuController1());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppTheme.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: hexToColor('#EFF7FF'),
              width: Get.width,
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  RenderSvg(path: 'arrow_drag')
                ],
              ),
            ),
            Column(
              children: menuC
                  .getRightDrawer()
                  .map(
                    (itemY) => Column(
                      children: [
                        ExpansionTile(
                          childrenPadding: EdgeInsets.zero,

                          // leading: RenderSvg(path: '${itemY.svgPath}'),
                          // // collapsedBackgroundColor: hexToColor('#EFF7FF'),
                          // title: KText(
                          //   text: '${itemY.title}',
                          //   bold: true,
                          //   fontSize: 15,
                          // ),

                          title: Row(
                            children: [
                              RenderSvg(path: '${itemY.svgPath}'),
                              SizedBox(
                                width: 5,
                              ),
                              KText(
                                text: '${itemY.title}',
                                bold: true,
                                fontSize: 14,
                              ),
                            ],
                          ),
                          children: [
                            Column(
                              children: itemY.rightSidebarofSideBar!
                                  .map(
                                    (item) => ExpansionTile(
                                      childrenPadding: EdgeInsets.only(left: 0),
                                      backgroundColor: hexToColor('#FFF8EF'),
                                      collapsedBackgroundColor: hexToColor('#FFF8EF'),
                                      title: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          RenderSvg(path: '${item.subSvgPath}'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          KText(
                                            text: '${item.subTitle}',
                                            bold: true,
                                            fontSize: 13,
                                          ),
                                        ],
                                      ),
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: hexToColor('#D8FFF5'),
                                          ),
                                          child: Column(
                                            children: item.subChildren!
                                                .map(
                                                  (item) => InkWell(
                                                    onTap: () {
                                                      // back();
                                                      menuC.pushMenu(item.subTitleofTitle!);
                                                    },
                                                    child: Column(
                                                      children: [
                                                        Divider(
                                                          color: hexToColor('#BCE2D8'),
                                                          thickness: 1.2,
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.all(5),
                                                          margin: EdgeInsets.only(left: 15),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  KText(
                                                                    text: '●',
                                                                    fontSize: 8,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 8,
                                                                  ),
                                                                  Expanded(
                                                                    child: KText(
                                                                      text: '${item.subTitleofTitle}',
                                                                      fontSize: 14,
                                                                      maxLines: 2,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ),
                        Divider(
                          color: hexToColor('#B6B8C5'),
                          thickness: 1,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            ListTile(
              onTap: () {
                // push(AboutUs());
              },
              // leading: RenderSvg(path: 'icon_about_us'),
              title: Row(
                children: [
                  RenderSvg(path: 'icon_about_us'),
                  SizedBox(width: 5),
                  KText(
                    text: 'About Us',
                    bold: true,
                    fontSize: 14,
                  ),
                ],
              ),
            ),
            Divider(
              color: hexToColor('#B6B8C5'),
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
