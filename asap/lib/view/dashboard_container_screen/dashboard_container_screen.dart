import 'package:asap/view/dashboard_page/dashboard_page.dart';
import 'package:asap/view/sidemenu_draweritem/sidemenu_draweritem.dart';
import 'package:asap/widgets2/app_bar/appbar_leading_image.dart';
import 'package:asap/widgets2/app_bar/appbar_title_image.dart';
import 'package:asap/widgets2/app_bar/appbar_trailing_image.dart';
import 'package:asap/widgets2/app_bar/custom_app_bar.dart';
import 'package:asap/widgets2/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:asap/core/app_export.dart';

class DashboardContainerScreen extends StatefulWidget {
  const DashboardContainerScreen({super.key});

  @override
  State<DashboardContainerScreen> createState() =>
      _DashboardContainerScreenState();
}

class _DashboardContainerScreenState extends State<DashboardContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _showAppBar = true; // Flag to show/hide the app bar
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF9FF),
      key: _scaffoldKey,

      appBar: _showAppBar
          ? _buildAppBar(context)
          : null, // Conditionally show app bar
      body: Navigator(
        key: navigatorKey,
        initialRoute: AppRoutes.dashboardPage,
        onGenerateRoute: (routeSetting) => PageRouteBuilder(
          pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
          transitionDuration: Duration(seconds: 0),
        ),
      ),
      drawer: const SidemenuDraweritem(),
      bottomNavigationBar: _buildBottomBar(context),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      if (type == BottomBarEnum.Home) {
        // If home is selected, show the app bar
        setState(() {
          _showAppBar = true;
        });
      } else {
        // If other options are selected, hide the app bar
        setState(() {
          _showAppBar = false;
        });
      }
      Navigator.pushNamed(
        navigatorKey.currentContext!,
        getCurrentRoute(type),
      );
    });
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Course:
      case BottomBarEnum.Events:
      case BottomBarEnum.Skillparks:
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      default:
        return DefaultWidget();
    }
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 77.v,
      leadingWidth: 41.h,
      leading: AppbarLeadingImage(
        onTap: () => _scaffoldKey.currentState!.openDrawer(),
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 10.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgGroup2312,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettings,
          margin: EdgeInsets.only(
            left: 20.h,
            right: 20.h,
            bottom: 8.v,
          ),
        ),
      ],
    );
  }
}
