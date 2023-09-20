import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/base.dart';
import '../config/app_theme.dart';
import '../controller/menu_controller.dart';
import '../helper/hex_color.dart';
import '../helper/render_svg.dart';

class LeftDrawer extends StatelessWidget {
  // final menuC = Get.put(MenuController1());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    color: hexToColor('#C1E1FF'),
                    width: Get.width,
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle, boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 0),
                                blurRadius: 8.0,
                              ),
                            ]),
                            child: CircleAvatar(
                              // backgroundColor: AppTheme.color4,
                              radius: 45,
                              child: RenderSvg(path: 'avatar_placeholder'),
                            )),
                        SizedBox(
                          height: 15,
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 13.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                      height: 1.2,
                                      fontFamily: 'Manrope',
                                      fontSize: 15.0,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(
                                        height: 1.2,
                                        fontFamily: 'Manrope',
                                        fontSize: 13.0,
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Text(
                                    '',
                                    style: TextStyle(
                                        height: 1.2,
                                        fontFamily: 'Manrope',
                                        fontSize: 12.0,
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center,
                                  )),
                                ],
                              )
                            ],
                          ),
                        ),
                        // KText(text: 'Agency Manager'),
                        // KText(text: 'Uttara, Dhaka'),
                      ],
                    ),
                  ),
                  // Container(
                  //   //color: AppColors.buttonColor,
                  //   color: Color(0xFF92B9C8),
                  //   child: Padding(
                  //     padding: EdgeInsets.only(top: 40, bottom: 20),
                  //     child: Column(
                  //       children: [
                  //         Container(
                  //           decoration: BoxDecoration(
                  //             //color: Colors.white,
                  //             borderRadius: BorderRadius.circular(40),
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Colors.black26,
                  //                 spreadRadius: 3,
                  //                 blurRadius: 5,
                  //                 offset: Offset(0, 0),
                  //               ),
                  //             ],
                  //           ),
                  //           child: CircleAvatar(
                  //             radius: 40,
                  //             backgroundColor: Color(0xFFFFFFFF),
                  //             child: CircleAvatar(
                  //               radius: 40 - 2.0,
                  //               backgroundColor: Color(0xFFFFD88D),
                  //               child: ClipRRect(
                  //                 borderRadius:
                  //                     BorderRadius.circular(40 - 2.0),
                  //                 child: Image.asset(
                  //                   "assets/images/profile_avatar.png",
                  //                   fit: BoxFit.cover,
                  //                   width: (40 - 2.0) * 2,
                  //                   height: (40 - 2.0) * 2,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         if (userC.currentUser.value != null)
                  //           Padding(
                  //             padding: EdgeInsets.only(top: 13.0),
                  //             child: Column(
                  //               mainAxisSize: MainAxisSize.min,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.center,
                  //                   mainAxisSize: MainAxisSize.min,
                  //                   children: [
                  //                     Text(
                  //                       '${userC.currentUser.value!.personName}',
                  //                       style: TextStyle(
                  //                         height: 1.2,
                  //                         fontFamily: 'Manrope',
                  //                         fontSize: 15.0,
                  //                         color: Color(0xFF000000),
                  //                         fontWeight: FontWeight.w600,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.center,
                  //                   children: [
                  //                     Text(
                  //                       "${userC.currentUser.value!.role}",
                  //                       style: TextStyle(
                  //                           height: 1.2,
                  //                           fontFamily: 'Manrope',
                  //                           fontSize: 13.0,
                  //                           color: Color(0xFF000000),
                  //                           fontWeight: FontWeight.w500),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.center,
                  //                   children: [
                  //                     Expanded(
                  //                         child: Text(
                  //                       '${userC.currentUser.value!.homeAddress}',
                  //                       style: TextStyle(
                  //                           height: 1.2,
                  //                           fontFamily: 'Manrope',
                  //                           fontSize: 12.0,
                  //                           color: Color(0xFF000000),
                  //                           fontWeight: FontWeight.w400),
                  //                       textAlign: TextAlign.center,
                  //                     )),
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  SingleChildScrollView(
                    //ExpansionPanelList.radio is for expanded only one element at a time
                    physics: BouncingScrollPhysics(),
                    child: ExpansionPanelList.radio(
                      dividerColor: Color(0xFFB6B8C5),
                      expandedHeaderPadding: EdgeInsets.zero,
                      elevation: 0.0,
                      expansionCallback: (index, isExpanded) {
                        //  print(isExpanded);
                      },
                      children: Base.menuC
                          .getLeftDrawer()
                          .map(
                            (item) => ExpansionPanelRadio(
                              value: item.title!,
                              canTapOnHeader: true,
                              headerBuilder: (context, isExpanded) {
                                return ListTile(
                                  visualDensity: VisualDensity(vertical: -4),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 0.0,
                                  ),
                                  horizontalTitleGap: 10.0,
                                  minVerticalPadding: 0.0,
                                  //minLeadingWidth: 10.0,
                                  //shape: ,
                                  //dense: true,
                                  leading: item.iconPath!.isEmpty
                                      ? Icon(Icons.ac_unit, color: Color(0xFF2A3050))
                                      : ImageIcon(AssetImage(item.iconPath!), size: 24.0, color: Color(0xFF2A3050)),
                                  title: Text(
                                    item.title!,
                                    style: TextStyle(
                                        fontFamily: 'Manrope', fontSize: 14.0, color: Color(0xFF2A3050), fontWeight: FontWeight.w600),
                                  ),
                                );
                              },
                              body: Column(
                                //children: tile.titles.map(buildTile).toList(),
                                children: item.children!
                                    .map(
                                      (tile) => Container(
                                        color: Colors.green,
                                        //color: Color(0xFFE7F4F9),
                                        //padding:
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFE7F4F9),
                                            border: Border(
                                              //top: BorderSide(color: Color(0xFFE5EEE6)),
                                              bottom: BorderSide(color: Color(0xFFA3CCDC)),
                                            ),
                                          ),
                                          child: ListTile(
                                            tileColor: Color(0xFFC5DCE4),
                                            visualDensity: VisualDensity(vertical: -4),
                                            //leading: Icon(Icons.adjust, color: Colors.black),
                                            minLeadingWidth: 3.0,
                                            leading: Padding(
                                              padding: EdgeInsets.only(left: 7.0),
                                              child: ImageIcon(AssetImage('assets/icons/dot_icon.png'), color: Color(0xFF2A3050)),
                                            ),
                                            title: Padding(
                                              padding: EdgeInsets.zero,
                                              child: Text(
                                                tile.title!,
                                                style: TextStyle(
                                                    fontFamily: 'Manrope',
                                                    fontSize: 14.0,
                                                    color: Color(0xFF2A3050),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                            onTap: () async {
                                              // kLog(tile.title);
                                              // if (tile.title == 'My Attendance Dashboard') {
                                              //   myAttendanceDashboardC.getLateInMonth(isFirst: true);
                                              //   myAttendanceDashboardC.getPresentInMonth(isFirst: true);
                                              //   myAttendanceDashboardC.getLeaveInMonth(isFirst: true);
                                              //   myAttendanceDashboardC.getAbsentInMonth(isFirst: true);
                                              // }

                                              Base.menuC.pushMenuleft(tile.title!);
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  Container(color: Color(0xFFB6B8C5), width: double.infinity, height: 1.0),
                  Container(
                    color: Colors.white,
                    child: ListTile(
                      //leading: Icon(Icons.people),
                      //leading: ImageIcon(AssetImage('assets/icons/about_us_icon.png'), color: Color(0xFF2A3050)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      horizontalTitleGap: 10.0,
                      minVerticalPadding: 0.0,
                      //minLeadingWidth: 10.0,
                      leading: ImageIcon(AssetImage('assets/icons/about_us_icon.png'), color: Color(0xFF2A3050)),
                      title: Text(
                        'About Us',
                        style: TextStyle(fontFamily: 'Manrope', fontSize: 14.0, color: Color(0xFF2A3050), fontWeight: FontWeight.w600),
                      ),
                      //trailing: Icon(Icons.people),
                      onTap: () {
                        // push(AboutUs());
                      },
                    ),
                  ),

                  Container(color: Color(0xFFB6B8C5), width: double.infinity, height: 1),
                  Container(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        // Global.confirmDialog(onConfirmed: () {
                        //   userC.logOut();
                        //   back();
                        // });
                      },
                      // onTap: () => userC.logOut(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      horizontalTitleGap: 10.0,
                      minVerticalPadding: 0.0,
                      //minLeadingWidth: 10.0,
                      leading: ImageIcon(AssetImage('assets/icons/logout_icon.png'), color: Color(0xFF2A3050)),
                      title: Text(
                        'Logout',
                        style: TextStyle(fontFamily: 'Manrope', fontSize: 14.0, color: Color(0xFF2A3050), fontWeight: FontWeight.w600),
                      ),
                      //trailing: Icon(Icons.logout),
                    ),
                  ),
                  Container(color: Color(0xFFB6B8C5), width: double.infinity, height: 1.0),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                // 'Version 1.0.8',
                'Version ${AppTheme.appVersion}',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 12.0,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
