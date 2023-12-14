import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<String> items;

  Function(String) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 84.h,
        icon: Container(
          margin: EdgeInsets.only(left: 5.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowdownGray50001,
            height: 3.v,
            width: 6.h,
          ),
        ),
        hintText: "Deliver from",
        items: items,
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
