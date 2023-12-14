import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/appbar_title_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';

class AccountMyProfileScreen extends StatelessWidget {
  AccountMyProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController storeNameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('Profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.h,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 18.v),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  image: AssetImage(
                    ImageConstant.imgProfile,
                  ),
                  width: 60.h,
                ),
              ),
              Form(
                key: _formKey,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 33.v),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder54,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Text(
                          "Store Name",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 4.v),
                        _buildStoreName(context),
                        SizedBox(height: 10.v),
                        Text(
                          "User Name",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 4.v),
                        _buildUserName(context),
                        SizedBox(height: 9.v),
                        Text(
                          "Email",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        _buildEmail(context),
                        SizedBox(height: 9.v),
                        Text(
                          "Mobile",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        _buildMobileNo(context),
                        SizedBox(height: 10.v),
                        Text(
                          "Address",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        _buildAddress(context),
                        SizedBox(height: 9.v),
                        Text(
                          "Pincode",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        _buildPincode(context),
                        SizedBox(height: 25.v),
                        _buildUpdateButton(context),
                        SizedBox(height: 91.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 36.h),
                            decoration: AppDecoration.outlineIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder25,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Already have an account? ",
                                  style:
                                      CustomTextStyles.bodySmallErrorContainer,
                                ),
                                TextSpan(
                                  text: "Login",
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
      height: 48.v,
      leadingWidth: 227.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgEllipse1264,
        margin: EdgeInsets.only(
          right: 177.h,
          bottom: 15.v,
        ),
      ),
      title: SizedBox(
        height: 48.78.v,
        width: 227.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            AppbarLeadingImage(
              imagePath: ImageConstant.imgEllipse1264,
              margin: EdgeInsets.only(
                right: 177.h,
                bottom: 15.v,
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgEllipse1274,
              margin: EdgeInsets.only(
                right: 67.h,
                bottom: 24.v,
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgRefresh,
              margin: EdgeInsets.fromLTRB(20.h, 10.v, 169.h, 2.v),
            ),
            AppbarSubtitleThree(
              text: "My Profile",
              margin: EdgeInsets.only(
                left: 129.h,
                top: 18.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEllipse1284,
          margin: EdgeInsets.only(bottom: 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStoreName(BuildContext context) {
    return CustomTextFormField(
      controller: storeNameController,
      hintText: "Shop_name",
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      hintText: "Name",
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Name@gmail.com",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildMobileNo(BuildContext context) {
    return CustomTextFormField(
      controller: mobileNoController,
      hintText: "1234567890",
      textInputType: TextInputType.phone,
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
      controller: addressController,
      hintText: "abcde abcde ",
    );
  }

  /// Section Widget
  Widget _buildPincode(BuildContext context) {
    return CustomTextFormField(
      controller: pincodeController,
      hintText: "123454",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildUpdateButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Update",
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1,
    );
  }
}
