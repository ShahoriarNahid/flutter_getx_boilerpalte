import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerpalte/pages/home_page.dart';
import 'package:get/get.dart';
import '../base/base.dart';
import '../config/app_theme.dart';
import '../helper/k_text.dart';
import '../model/left_side_bar_model.dart';
import '../model/right_side_bar_model.dart';

class MenuController extends GetxController {
  final globalKey = GlobalKey<ScaffoldState>();

  List<LeftSidebar> leftSidebar = [];

  List<LeftSidebar> getLeftDrawer() {
    return leftSidebar = [
      LeftSidebar(
        title: 'My Personal Data',
        iconPath: 'assets/icons/my_personal_data_icon.png',
        children: [
          LeftSidebarChildren(title: 'Update My Profile'),
          LeftSidebarChildren(title: 'Validate My Identity'),
          LeftSidebarChildren(title: 'Enroll My Biometrics'),
          LeftSidebarChildren(title: 'Authorize the Use of My Data'),
          LeftSidebarChildren(title: 'Change My Password'),
          LeftSidebarChildren(title: 'My Attendance Dashboard'),
          LeftSidebarChildren(title: 'Express Interest for Jobs'),
        ],
      ),
      LeftSidebar(
        title: 'Manage Agency',
        iconPath: 'assets/icons/manage_agency_icon.png',
        children: [
          LeftSidebarChildren(title: 'My Teams Location Traces'),
        ],
      ),
      LeftSidebar(
        title: 'User Feedback',
        iconPath: 'assets/icons/user_feedback_icon.png',
        children: [
          LeftSidebarChildren(title: 'UI Feedback'),
          LeftSidebarChildren(title: 'Overall Service Quality Feedback'),
          LeftSidebarChildren(title: 'User Complaints'),
        ],
      ),
      LeftSidebar(
        title: 'App Settings',
        iconPath: 'assets/icons/app_settings_icon.png',
        children: [
          LeftSidebarChildren(title: 'App Settings'),
          LeftSidebarChildren(title: 'Update App Configurations'),
        ],
      ),
    ];
  }

  List<RightSidebar> rightSidebar = [];
  List<RightSidebar> getRightDrawer() {
    return rightSidebar = [
      RightSidebar(svgPath: 'icon_project_management', title: 'Project Management', rightSidebarofSideBar: [
        RightSidebarofSideBar(
          subTitle: 'Reporting and Analysis',
          subSvgPath: 'icon_reporting_and_analysis',
          subChildren: [
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Project Dashboard',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Project Progress Report',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Project Sites on Map',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Site Installation Report',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Site Inspection Report',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Network Installation Report',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Network Inspection Report',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Equipment Installation Report',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Equipment Inspection Report',
            ),
          ],
        ),
        RightSidebarofSideBar(
          subTitle: 'Data Entry and Processing',
          subSvgPath: 'icon_dataentry_and_processing',
          subChildren: [
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'My Geography for Site Installation',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'My Geography for Site Inspection',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'My Geography for Network Installation',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'My Geography for Network Inspection',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'My Geography for Equipment Installation',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'My Geography for Equipment Inspection',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Post My Task Progress',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Post Site Installation Progress',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Post Site Inspection Result',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Post Network Installation Progress',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Post Network Inspection Result',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Post Device Installation Progress',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Post Device Inspection Result',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Post Conduct Project Test',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Submit Change Request',
            ),
          ],
        ),
        RightSidebarofSideBar(
          subTitle: 'Setup and Configuration',
          subSvgPath: 'icon_setup_configure',
          subChildren: [
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Project Planning Board',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Project Test Types',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Project Sites',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Project Mgt. Settings',
            ),
          ],
        ),
      ]),
      RightSidebar(svgPath: 'icn_logistic_operation', title: 'Logistic Operation', rightSidebarofSideBar: [
        RightSidebarofSideBar(
          subTitle: 'Reporting and Analysis',
          subSvgPath: 'icon_reporting_and_analysis',
          subChildren: [
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Transportation Dashboard',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Transport Order History',
            ),
          ],
        ),
        RightSidebarofSideBar(
          subTitle: 'Data Entry and Processing',
          subSvgPath: 'icon_dataentry_and_processing',
          subChildren: [
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Place Transport Orders',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Assign Vehicles and Drivers',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Inspect Materials at Source',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Load Materials to Vehicle',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Confirm Vehicle Readiness',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Start Travelling',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Deliver Materials',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Inspect Materials at Destination',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Accept Delivered Materials',
            ),
          ],
        ),
        RightSidebarofSideBar(
          subTitle: 'Setup and Configuration',
          subSvgPath: 'icon_setup_configure',
          subChildren: [
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Register Driver',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Register My Vehicle',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Add Driver to Agency Pool',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Add Vehicle to Agency Pool',
            ),
            RightSidebarChildrenofChildern(
              subTitleofTitle: 'Logistic Settings',
            ),
          ],
        ),
      ]),
      RightSidebar(
        svgPath: 'icon_network_management',
        title: 'Network Management',
        rightSidebarofSideBar: [
          RightSidebarofSideBar(
            subTitle: 'Reporting and Analysis',
            subSvgPath: 'icon_reporting_and_analysis',
            subChildren: [
              RightSidebarChildrenofChildern(
                subTitleofTitle: 'Network Topology for Geography',
              ),
            ],
          ),
          RightSidebarofSideBar(
            subTitle: 'Data Entry and Processing',
            subSvgPath: 'icon_dataentry_and_processing',
            subChildren: [],
          ),
          RightSidebarofSideBar(
            subTitle: 'Setup and Configuration',
            subSvgPath: 'icon_setup_configure',
            subChildren: [
              RightSidebarChildrenofChildern(
                subTitleofTitle: 'NMS Settings',
              ),
            ],
          ),
        ],
      ),
    ];
  }

  final currentIndex = RxInt(2);

  set setCurrentIndex(String item) => currentIndex.value = getMenuIndex(item);

  Widget getCurrentPage() {
    switch (currentIndex.value) {
      case 0:
        return Container(
          height: 1000,
          color: Colors.white,
          width: Get.width,
          child: Column(
            children: [
              TextButton(
                style: ButtonStyle(),
                onPressed: () {
                  Base.languageController.changeLanguage('bn');
                },
                child: KText(
                  text: 'submit'.trParams({'email': 'nahid@gmail.com'}),
                ),
              ),
              TextButton(
                style: ButtonStyle(),
                onPressed: () {
                  Base.languageController.changeLanguage('en_US');
                },
                child: KText(
                  text: 'submit'.tr,
                ),
              ),
            ],
          ),
        );
      case 1:
        return Container(
          height: 1000,
          color: Colors.black,
          width: Get.width,
        );
      case 2:
        return HomePage();
      case 3:
        return Container(
          height: 1000,
          color: Colors.blue,
          width: Get.width,
        );
      case 4:
        return Container(
          height: 1000,
          color: Colors.yellow,
          width: Get.width,
        );

      default:
        return Container(
          height: 1000,
          color: Colors.white,
          width: Get.width,
        );
    }
    // switch (currentIndex.value) {
    //   case 0:
    //     return MapPage();
    //   case 1:
    //     return ListViewTaskPage();
    //   case 2:
    //     return HomePage();
    //   case 3:
    //     return ConversationListPage();
    //   case 4:
    //     return Container(
    //       height: 1000,
    //       color: Colors.white,
    //       width: Get.width,
    //     );
    //   default:
    //     return Container(
    //       height: 1000,
    //       color: Colors.white,
    //       width: Get.width,
    //     );
    // }
  }

  final bottomMenus = [
    'bottom_1.svg',
    'bottom_2.svg',
    'bottom_3.svg',
    'bottom_4.svg',
    'bottom_5.svg',
  ];

//   // 3-12-2022..........................................................

//   final currentIndex = RxInt(2);

//   set setCurrentIndex(String item) => currentIndex.value = getMenuIndex(item);

//   Widget getCurrentPage() {
//     switch (currentIndex.value) {
//       case 0:
//         return MapPage();
//       case 1:
//         return ListViewTaskPage();
//       case 2:
//         return HomePage();
//       case 3:
//         return ConversationListPage();
//       case 4:
//         return Container(
//           height: 1000,
//           color: Colors.white,
//           width: Get.width,
//         );
//       default:
//         return Container(
//           height: 1000,
//           color: Colors.white,
//           width: Get.width,
//         );
//     }
//   }

//   final bottomMenus = [
//     'bottom_1.svg',
//     'bottom_2.svg',
//     'icon_bottom_navigation_dashboard.svg',
//     'bottom_4.svg',
//     'bottom_5.svg'
//   ];

// //...............................................................

  final appbarMenus = [
    // 'top_1.svg',
    'top_2.svg',
    // 'top_3.svg',
    // 'top_4.svg',
    'top_5.svg'
  ];

  int getMenuIndex(String item) {
    return bottomMenus.indexOf(item);
  }

//left
  void pushMenuleft(String title) {
    switch (title) {
      // case '':
      //   back();
      //   return push();

      default:
        {
          Get.snackbar(
            'Attention!!',
            'Development in progress',
            colorText: AppTheme.black,
            backgroundColor: AppTheme.appHomePageColor,
            snackPosition: SnackPosition.BOTTOM,
            dismissDirection: DismissDirection.horizontal,
            maxWidth: 190,
          );
          //statements;
        }
    }
  }

//right
  void pushMenu(String title) {
    switch (title) {
      // case '':
      //   back();
      //   return push();

      default:
        {
          Get.snackbar('Attention!!', 'Development in progress',
              colorText: AppTheme.black,
              backgroundColor: AppTheme.appHomePageColor,
              snackPosition: SnackPosition.BOTTOM,
              maxWidth: 190,
              duration: Duration(seconds: 3));
          //statements;
        }
    }
  }
}

//

// searchLocationBottomSheet() async {
//   try {
//     await Get.bottomSheet(
//       ignoreSafeArea: true,

//       isScrollControlled: true,
//       persistent: false,
//       isDismissible: true,

//       // Obx(
//       //   () =>
//       SingleChildScrollView(
//         child: Container(
//           alignment: Alignment.center,
//           height: 320,
//           padding: EdgeInsets.symmetric(
//             horizontal: 20,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0))),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               InkWell(
//                 onTap: () {
//                   back();
//                   push(LoanApplicationWorkbenchPage());
//                 },
//                 child: ListTile(
//                   tileColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   leading: SizedBox(
//                     height: 30,
//                     width: 60,
//                     child: RenderSvg(
//                       path: 'icon_demo',
//                     ),
//                   ),
//                   title: KText(text: 'Apply for Loan', bold: true, fontSize: 15),
//                   trailing: KText(text: ''),
//                 ),
//               ),
//               Divider(
//                 thickness: 1,
//               ),
//               InkWell(
//                 onTap: () {
//                   back();
//                   push(AdvanceApplicationWorkbenchPage());
//                 },
//                 child: ListTile(
//                   tileColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   leading: SizedBox(
//                     height: 30,
//                     width: 60,
//                     child: RenderSvg(
//                       path: 'icon_demo',
//                     ),
//                   ),
//                   title: KText(text: 'Apply for Advance', bold: true, fontSize: 15),
//                   trailing: KText(text: ''),
//                 ),
//               ),
//               Divider(
//                 thickness: 1,
//               ),
//               InkWell(
//                 onTap: () {
//                   back();
//                   push(ExpenseReimbursementWorkbenchPage());
//                 },
//                 child: ListTile(
//                   tileColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   leading: SizedBox(
//                     height: 30,
//                     width: 60,
//                     child: RenderSvg(
//                       path: 'icon_demo',
//                     ),
//                   ),
//                   title: KText(text: 'Expense Reimbursement', bold: true, fontSize: 15),
//                   trailing: KText(text: ''),
//                 ),
//               ),
//               Divider(
//                 thickness: 1,
//               ),
//               InkWell(
//                 onTap: () {
//                   back();
//                   push(TravelRequestWorkbenchPage());
//                 },
//                 child: ListTile(
//                   tileColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   leading: SizedBox(
//                     height: 30,
//                     width: 60,
//                     child: RenderSvg(
//                       path: 'icon_demo',
//                     ),
//                   ),
//                   title: KText(text: 'Travel Request', bold: true, fontSize: 15),
//                   trailing: KText(text: ''),
//                 ),
//               ),
//               Divider(
//                 thickness: 1,
//               ),
//             ],
//           ),
//         ),
//       ),
//       // ),

//       //backgroundColor: Colors.white,
//       elevation: 0,
//     ).then((value) {
//       // search.value = '';
//       // locations.clear();

//       // isLoadding.value = false;
//       //// kLog('closed');
//     });
//   } catch (e) {
//     print(e);
//   }
// }
