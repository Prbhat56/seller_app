import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:seller_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController oldPasswordController = TextEditingController();

  TextEditingController newPasswordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 11.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Old Password",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 4.v),
              _buildOldPassword(context),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "New  Password",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 4.v),
              _buildNewPassword(context),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Confirm Password",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 5.v),
              _buildConfirmPassword(context),
              SizedBox(height: 8.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSave(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "Change Password",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.fromLTRB(21.h, 10.v, 21.h, 29.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOldPassword(BuildContext context) {
    return CustomTextFormField(
      controller: oldPasswordController,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 14.v, 21.h, 13.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup,
          height: 12.v,
          width: 17.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 40.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildNewPassword(BuildContext context) {
    return CustomTextFormField(
      controller: newPasswordController,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 14.v, 21.h, 13.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup,
          height: 12.v,
          width: 17.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 40.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return CustomTextFormField(
      controller: confirmPasswordController,
      textInputAction: TextInputAction.done,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 14.v, 21.h, 13.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup,
          height: 12.v,
          width: 17.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 40.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      text: "Save",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 19.v,
      ),
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1,
    );
  }
}
