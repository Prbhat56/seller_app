import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';

class Frame33659Screen extends StatelessWidget {
  const Frame33659Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 250.h,
                padding: EdgeInsets.symmetric(vertical: 25.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRefresh,
                                    height: 36.v,
                                    width: 38.h,
                                    margin: EdgeInsets.only(
                                        top: 27.v, bottom: 107.v),
                                    onTap: () {
                                      onTapImgRefresh(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Column(children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder54),
                                          child: Container(
                                              height: 108.adaptSize,
                                              width: 108.adaptSize,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.h,
                                                  vertical: 5.v),
                                              decoration: AppDecoration
                                                  .fillOnPrimaryContainer
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder54),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage13,
                                                        height: 90.adaptSize,
                                                        width: 90.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(45.h),
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCamera,
                                                        height: 27.adaptSize,
                                                        width: 27.adaptSize,
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        margin: EdgeInsets.only(
                                                            right: 6.h))
                                                  ]))),
                                      SizedBox(height: 14.v),
                                      Text("Eljad Eendaz",
                                          style: CustomTextStyles
                                              .titleLargeMedium),
                                      Text("Edit Profile",
                                          style: CustomTextStyles.bodyMedium14)
                                    ]))
                              ]))),
                  SizedBox(height: 10.v),
                  _buildFrame(context,
                      userImage: ImageConstant.imgClaritynewline,
                      userLabel: "Add Product"),
                  SizedBox(height: 5.v),
                  _buildFrame1(context,
                      userImage: ImageConstant.imgMdiCouponOutline,
                      logoutLabel: "Add Coupon"),
                  SizedBox(height: 5.v),
                  _buildFrame(context,
                      userImage: ImageConstant.imgIcoutlinefoodbank,
                      userLabel: "My Products"),
                  SizedBox(height: 5.v),
                  _buildFrame(context,
                      userImage: ImageConstant.imgMdicartoutline,
                      userLabel: "My Orders"),
                  SizedBox(height: 5.v),
                  _buildFrame(context,
                      userImage: ImageConstant.imgInfo,
                      userLabel: "Order history"),
                  SizedBox(height: 5.v),
                  _buildFrame(context,
                      userImage: ImageConstant.imgUilTransaction,
                      userLabel: "Transactions"),
                  SizedBox(height: 5.v),
                  _buildFrame(context,
                      userImage: ImageConstant.imgMdiaccountcogoutline,
                      userLabel: "Change Password"),
                  SizedBox(height: 5.v),
                  _buildFrame1(context,
                      userImage: ImageConstant.imgSolarLogoutOutline,
                      logoutLabel: "Logout"),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String userImage,
    required String userLabel,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: userImage,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 2.v),
              child: Text(userLabel,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.black900)))
        ]));
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String userImage,
    required String logoutLabel,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 13.v),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: userImage, height: 24.adaptSize, width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 4.v),
              child: Text(logoutLabel,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.black900)))
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgRefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
