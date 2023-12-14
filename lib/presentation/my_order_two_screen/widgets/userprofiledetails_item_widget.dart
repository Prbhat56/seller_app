import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';

// ignore: must_be_immutable
class UserprofiledetailsItemWidget extends StatelessWidget {
  const UserprofiledetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                  decoration: BoxDecoration(
                    color: appTheme.gray800,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Home Made Life Period : 11days",
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "Cuisine:",
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Type:",
                      style: theme.textTheme.labelMedium,
                    ),
                    Text(
                      "Price: 10",
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Offer Price: 10",
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Stock: 22",
                      style: theme.textTheme.labelMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTablerEdit,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Text(
                        "Edit",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMdiDelete,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "Delete",
                          style: CustomTextStyles.bodySmallOnPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Active",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPath3391Onprimarycontainer,
                        height: 3.v,
                        width: 5.h,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 7.v,
                          bottom: 4.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
