import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 3.v,
      ),
      child: Row(
        children: [
          CustomElevatedButton(
            height: 30.v,
            width: 42.h,
            text: "R J",
            margin: EdgeInsets.symmetric(vertical: 3.v),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPurpleADToPurpleDDecoration,
            buttonTextStyle: CustomTextStyles.titleSmallInterOnPrimaryContainer,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Robert Jhon",
                        style: CustomTextStyles.titleLargeInterBlack900,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Text(
                          "- 50.85",
                          style: CustomTextStyles.titleMediumGreenA700f4,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "05 NOV 2022",
                    style: CustomTextStyles.labelMediumInterBluegray400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
