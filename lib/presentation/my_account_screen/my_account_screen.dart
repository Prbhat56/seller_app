import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_outlined_button.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyAccountScreen extends StatelessWidget {
  MyAccountScreen({Key? key}) : super(key: key);

  TextEditingController transactionsValueController = TextEditingController();

  TextEditingController notificationSettingsController =
      TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v),
                child: Column(children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.transactionsScreen);
                    },
                    child: Container(
                        width: 320.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 11.v),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Transactions",
                            style: theme.textTheme.titleSmall)),
                  ),
                  SizedBox(height: 15.v),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.notificationScreen);
                    },
                    child: Container(
                        width: 320.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 11.v),
                        decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Text("notification settings",
                            style: theme.textTheme.titleSmall)),
                  ),
                  SizedBox(height: 15.v),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.changePasswordScreen);
                    },
                    child: Container(
                        width: 320.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 11.v),
                        decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Text("Change Password",
                            style: theme.textTheme.titleSmall)),
                  ),
                  SizedBox(height: 15.v),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.notificationOneScreen);
                    },
                    child: Container(
                        width: 320.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 11.v),
                        decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Text("Help & Support",
                            style: theme.textTheme.titleSmall)),
                  ),
                  SizedBox(height: 15.v),
                  _buildFaqs(context),
                  SizedBox(height: 15.v),
                  Container(
                      width: 320.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 10.v),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Text("Logout", style: theme.textTheme.titleSmall)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgRefresh,
            margin: EdgeInsets.only(left: 20.h, top: 8.v, bottom: 11.v)),
        centerTitle: true,
        title: AppbarSubtitleThree(text: "My Account"));
  }

  Widget _buildFaqs(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "FAQs",
        buttonStyle: CustomButtonStyles.outlineGray,
        buttonTextStyle: theme.textTheme.titleSmall!,
        onPressed: () {
          onTapFaqs(context);
        });
  }

  /// Navigates to the faqScreen when the action is triggered.
  onTapFaqs(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }
}
