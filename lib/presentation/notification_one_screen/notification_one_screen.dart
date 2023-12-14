import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';

class NotificationOneScreen extends StatelessWidget {
  const NotificationOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 5.v),
                  _buildAppBar(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 36.v,
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgRefresh,
            margin: EdgeInsets.only(left: 20.h),
            onTap: () {
              onTapRefresh(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Help & Support"));
  }

  /// Navigates to the myAccountScreen when the action is triggered.
  onTapRefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myAccountScreen);
  }
}
