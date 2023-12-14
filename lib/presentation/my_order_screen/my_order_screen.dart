import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Text(
                " Now",
                style: CustomTextStyles.titleSmallGray500,
              ),
              SizedBox(height: 14.v),
              _buildAcceptColumn(context),
              SizedBox(height: 31.v),
              Text(
                "7:00pm",
                style: CustomTextStyles.titleSmallGray500,
              ),
              SizedBox(height: 18.v),
              _buildAcceptColumn1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 58.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRefresh,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 8.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "My Order",
      ),
    );
  }

  /// Section Widget
  Widget _buildAcceptButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "Accept",
        margin: EdgeInsets.only(right: 5.h),
        buttonStyle: CustomButtonStyles.outlineBlueGrayF,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildRejectButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "Reject",
        margin: EdgeInsets.only(left: 5.h),
        buttonStyle: CustomButtonStyles.outlineDeepOrangeTL21,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildAcceptColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBluegray1003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTwoHundredSixtyFourThousandOne(
            context,
            userTitle: "#264100",
            showLessText: "Show More",
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildEstimatedArrival(
                  context,
                  estimatedArrival: "Estimated Arrival",
                  estimatedTime: "25",
                  estimatedUnit: "min",
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 32.v),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 3.h),
                          child: Text(
                            "3 Items",
                            style: CustomTextStyles.bodySmallGray50002,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Starbuck ",
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                          Container(
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 7.v,
                              bottom: 5.v,
                            ),
                            padding: EdgeInsets.all(3.h),
                            decoration: AppDecoration.fillTeal.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder5,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVector3,
                              height: 2.v,
                              width: 3.h,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 36.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAcceptButton(context),
              _buildRejectButton(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAcceptButton1(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "Accept",
        margin: EdgeInsets.only(right: 5.h),
        buttonStyle: CustomButtonStyles.outlineBlueGrayF,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildRejectButton1(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 43.v,
        text: "Reject",
        margin: EdgeInsets.only(left: 5.h),
        buttonStyle: CustomButtonStyles.outlineBlackTL21,
        buttonTextStyle: CustomTextStyles.bodyMediumGray80001,
      ),
    );
  }

  /// Section Widget
  Widget _buildAcceptColumn1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBluegray1003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: _buildTwoHundredSixtyFourThousandOne(
              context,
              userTitle: "#264100",
              showLessText: "Show Less",
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              right: 14.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildEstimatedArrival(
                  context,
                  estimatedArrival: "Estimated Arrival",
                  estimatedTime: "25",
                  estimatedUnit: "min",
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.v),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 3.h),
                          child: Text(
                            "3 Items",
                            style: CustomTextStyles.bodySmallGray50002,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ShopName",
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                          Container(
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              top: 6.v,
                              bottom: 6.v,
                            ),
                            padding: EdgeInsets.all(3.h),
                            decoration: AppDecoration.fillTeal.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder5,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVector3,
                              height: 2.v,
                              width: 3.h,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBurger22,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "5 * Lachha Paratha",
                    style: CustomTextStyles.bodySmallInterBlack900,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    "5.60",
                    style: CustomTextStyles.labelLargeInter,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            height: 29.v,
            width: 300.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Text(
                      "5.60",
                      style: CustomTextStyles.labelLargeInter,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 29.v,
                    width: 300.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBurger22,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(bottom: 9.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 15.h,
                                    top: 3.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "5 * Lachha Paratha",
                                        style: CustomTextStyles
                                            .bodySmallInterBlack900,
                                      ),
                                      SizedBox(height: 2.v),
                                      Text(
                                        "Half",
                                        style: CustomTextStyles
                                            .bodySmallInterBlack9008,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 300.h,
                            child: Divider(
                              color: appTheme.black900.withOpacity(0.2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Text(
                "12.00 ",
                style: CustomTextStyles.labelMediumInter,
              ),
            ),
          ),
          SizedBox(height: 41.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAcceptButton1(context),
                _buildRejectButton1(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTwoHundredSixtyFourThousandOne(
    BuildContext context, {
    required String userTitle,
    required String showLessText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          userTitle,
          style: CustomTextStyles.titleLargePrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 4.v,
          ),
          child: Text(
            showLessText,
            style: CustomTextStyles.bodySmallTeal500.copyWith(
              color: appTheme.teal500,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildEstimatedArrival(
    BuildContext context, {
    required String estimatedArrival,
    required String estimatedTime,
    required String estimatedUnit,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60.h,
          child: Text(
            estimatedArrival,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallGray50002.copyWith(
              color: appTheme.gray50002,
            ),
          ),
        ),
        SizedBox(
          width: 75.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                estimatedTime,
                style: theme.textTheme.displaySmall!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 19.v,
                  bottom: 5.v,
                ),
                child: Text(
                  estimatedUnit,
                  style: CustomTextStyles.bodyMediumSofiaProOnPrimary.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
