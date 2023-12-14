import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_drop_down.dart';
import 'package:seller_app/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 29.v),
                child: Column(children: [
                  _buildComponentFourteen(context),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Notification volume",
                              style:
                                  CustomTextStyles.bodyMediumRobotoBlack900))),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.v),
                                child: Text("",
                                    style: CustomTextStyles
                                        .bodyLargeSegoeFluentIconsGray80001)),
                            CustomImageView(
                                imagePath: ImageConstant.imgSlider,
                                height: 32.v,
                                width: 254.h,
                                margin: EdgeInsets.only(left: 16.h))
                          ])),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Vibration level   ",
                              style:
                                  CustomTextStyles.bodyMediumRobotoBlack900))),
                  SizedBox(height: 21.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      child: CustomDropDown(
                          icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 21.v, 20.h, 21.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 8.v,
                                  width: 16.h)),
                          hintText: "High",
                          hintStyle: theme.textTheme.titleSmall!,
                          items: dropdownItemList,
                          borderDecoration: DropDownStyleHelper.outlineGrayTL10,
                          onChanged: (value) {})),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgRefresh,
            margin: EdgeInsets.only(left: 20.h, top: 9.v, bottom: 10.v),
            onTap: () {
              onTapRefresh(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Notification Settings"));
  }

  /// Section Widget
  Widget _buildComponentFourteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text("Notification",
                  style: CustomTextStyles.titleSmallRobotoBlack900)),
          CustomSwitch(
              value: isSelectedSwitch,
              onChange: (value) {
                isSelectedSwitch = value;
              })
        ]));
  }

  /// Navigates to the myAccountScreen when the action is triggered.
  onTapRefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myAccountScreen);
  }
}
