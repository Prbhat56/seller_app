import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:seller_app/widgets/app_bar/appbar_title_dropdown.dart';

import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 33.v),
                child: SingleChildScrollView(
                  child: Column(children: [
                    _buildOrders(context, userOrdersLabel: "Products"),
                    SizedBox(height: 24.v),
                    _buildAddProduct1(context),
                    SizedBox(height: 50.v),
                    _buildOrders(context, userOrdersLabel: "Orders"),
                    SizedBox(height: 24.v),
                    _buildMyOrders1(context),
                    SizedBox(height: 50.v),
                    _buildOrders(context, userOrdersLabel: "Accounts"),
                    SizedBox(height: 24.v),
                    _buildMyAccount1(context),
                    SizedBox(height: 5.v)
                  ]),
                ))));
  }


  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 67.v,
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgProfile,
            margin: EdgeInsets.only(left: 20.h, top: 11.v, bottom: 6.v),
            onTap: () {
              onTapProfile(context);
            }),
        centerTitle: true,
        title: Column(children: [
          AppbarTitleDropdown(
              margin: EdgeInsets.only(left: 16.h, right: 7.h, top: 3.h),
              hintText: "Deliver from",
              items: dropdownItemList,
              onTap: (value) {}),
          SizedBox(height: 5.v),
          AppbarSubtitleFour(text: "4102  Pretty View Lane "),
        ]),
        actions: [
          AppbarLeadingImage(
            imagePath: ImageConstant.imgGroup19712,
            margin: EdgeInsets.fromLTRB(15.h, 11.v, 21.h, 6.v),
          ),
        ]);
  }

  /// Section Widget
  Widget _buildAddProduct(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.addProductOneScreen);
            },
            height: 59.v,
            text: "Add Product",
            margin: EdgeInsets.only(right: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 9.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgClaritynewline,
                    height: 25.adaptSize,
                    width: 25.adaptSize)),
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle: theme.textTheme.labelLarge!));
  }

  /// Section Widget
  Widget _buildMyProducts(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.myOrderTwoScreen);
            },
            height: 59.v,
            text: "My Products",
            margin: EdgeInsets.only(left: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 9.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIcoutlinefoodbank,
                    height: 25.adaptSize,
                    width: 25.adaptSize)),
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle: theme.textTheme.labelLarge!));
  }

  /// Section Widget
  Widget _buildAddProduct1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildAddProduct(context), _buildMyProducts(context)]);
  }

  /// Section Widget
  Widget _buildMyOrders(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.myOrderScreen);
            },
            height: 59.v,
            text: "My Orders",
            margin: EdgeInsets.only(right: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 22.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMdicartoutline,
                    height: 25.adaptSize,
                    width: 25.adaptSize)),
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle: theme.textTheme.labelLarge!));
  }

  /// Section Widget
  Widget _buildOrderHistory(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.myOrderOneScreen);
            },
            height: 59.v,
            text: "Order history",
            margin: EdgeInsets.only(left: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 5.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgInfo,
                    height: 25.adaptSize,
                    width: 25.adaptSize)),
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle: theme.textTheme.labelLarge!));
  }

  /// Section Widget
  Widget _buildMyOrders1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildMyOrders(context), _buildOrderHistory(context)]);
  }

  /// Section Widget
  Widget _buildMyAccount(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.myAccountScreen);
            },
            height: 59.v,
            text: "My Account",
            margin: EdgeInsets.only(right: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 12.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMdiaccountcogoutline,
                    height: 25.adaptSize,
                    width: 25.adaptSize)),
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle: theme.textTheme.labelLarge!));
  }

  /// Section Widget
  Widget _buildMyProfile(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.accountOneScreen);
            },
            height: 59.v,
            text: "My Profile",
            margin: EdgeInsets.only(left: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 26.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGgprofile,
                    height: 25.adaptSize,
                    width: 25.adaptSize)),
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle: theme.textTheme.labelLarge!));
  }

  /// Section Widget
  Widget _buildMyAccount1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildMyAccount(context), _buildMyProfile(context)]);
  }

  /// Common widget
  Widget _buildOrders(
    BuildContext context, {
    required String userOrdersLabel,
  }) {
    return SizedBox(
        height: 23.v,
        width: 280.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Text(userOrdersLabel,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: theme.colorScheme.onPrimary))),
          CustomImageView(
              imagePath: ImageConstant.imgGroup17868Gray800,
              height: 1.v,
              width: 280.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 10.v))
        ]));
  }

  /// Navigates to the frame33659Screen when the action is triggered.
  onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame33659Screen);
  }
}
