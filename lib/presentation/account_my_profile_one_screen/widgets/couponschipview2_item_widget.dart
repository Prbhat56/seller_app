import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';

// ignore: must_be_immutable
class Couponschipview2ItemWidget extends StatelessWidget {
  const Couponschipview2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        left: 10.h,
        top: 7.v,
        bottom: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "ZAMATOFREE",
        style: TextStyle(
          color: theme.colorScheme.onPrimaryContainer,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      deleteIcon: CustomImageView(
        imagePath: ImageConstant.imgGroup19714,
        height: 10.adaptSize,
        width: 10.adaptSize,
        margin: EdgeInsets.only(left: 7.h),
      ),
      onDeleted: () {},
      selected: false,
      backgroundColor: appTheme.green900,
      selectedColor: appTheme.orange100,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          15.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
