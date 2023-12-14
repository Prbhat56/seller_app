import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';

class MyOrderOneScreen extends StatelessWidget {
  const MyOrderOneScreen({Key? key})
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
              _buildShortByRow(context),
              Spacer(
                flex: 39,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgNothing1,
                height: 100.adaptSize,
                width: 100.adaptSize,
              ),
              SizedBox(height: 59.v),
              Text(
                "No order Available.",
                style: CustomTextStyles.bodySmallBlack900,
              ),
              Spacer(
                flex: 60,
              ),
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
  Widget _buildShortByRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Short by:",
            style: CustomTextStyles.bodySmall12,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Text(
              "Popular",
              style: CustomTextStyles.bodySmallPrimary12,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector11,
            height: 2.v,
            width: 3.h,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 9.v,
              bottom: 9.v,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgGroup17877,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
        ],
      ),
    );
  }
}
