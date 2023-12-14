import '../account_screen/widgets/couponschipview_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_drop_down.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_switch.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController mobileNoEditTextController = TextEditingController();

  TextEditingController addressEditTextController = TextEditingController();

  TextEditingController pincodeEditTextController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  bool isSelectedSwitch = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildRefreshRow(context),
                SizedBox(height: 15.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "User Name",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 4.v),
                          _buildUserNameEditText(context),
                          SizedBox(height: 9.v),
                          Text(
                            "Email",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildEmailEditText(context),
                          SizedBox(height: 9.v),
                          Text(
                            "Mobile",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildMobileNoEditText(context),
                          SizedBox(height: 10.v),
                          Text(
                            "Address",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildAddressEditText(context),
                          SizedBox(height: 9.v),
                          Text(
                            "Pincode",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          _buildPincodeEditText(context),
                          SizedBox(height: 9.v),
                          Text(
                            "Preference Zone",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 5.v),
                          CustomDropDown(
                            icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 16.v, 27.h, 16.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgPath3391,
                                height: 5.v,
                                width: 9.h,
                              ),
                            ),
                            hintText: "Select Preference Zone",
                            items: dropdownItemList,
                            onChanged: (value) {},
                          ),
                          SizedBox(height: 19.v),
                          Row(
                            children: [
                              Text(
                                "Show More",
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                              CustomSwitch(
                                margin: EdgeInsets.only(
                                  left: 20.h,
                                  top: 2.v,
                                ),
                                value: isSelectedSwitch,
                                onChange: (value) {
                                  isSelectedSwitch = value;
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 17.v),
                          Text(
                            "Coupons ",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 7.v),
                          _buildCouponsChipView(context),
                          SizedBox(height: 16.v),
                          _buildUpdateButton(context),
                          SizedBox(height: 91.v),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 36.h),
                              decoration: AppDecoration.outlineIndigo.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder25,
                              ),
                              child: _buildSignupButton(context),
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
                                    style: CustomTextStyles
                                        .bodySmallErrorContainer,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildRefreshRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 46.v,
            width: 213.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse1263,
                  height: 33.v,
                  width: 50.h,
                  alignment: Alignment.topLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse1273,
                  height: 24.v,
                  width: 160.h,
                  alignment: Alignment.topLeft,
                ),
                CustomAppBar(
                  height: 36.v,
                  leadingWidth: 58.h,
                  leading: AppbarLeadingImage(
                    imagePath: ImageConstant.imgRefresh,
                    margin: EdgeInsets.only(left: 20.h),
                  ),
                  centerTitle: true,
                  title: AppbarSubtitleThree(
                    text: "Profile",
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1283,
            height: 30.v,
            width: 62.h,
            margin: EdgeInsets.only(bottom: 16.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserNameEditText(BuildContext context) {
    return CustomTextFormField(
      controller: userNameEditTextController,
      hintText: "Name",
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
      controller: emailEditTextController,
      hintText: "Name@gmail.com",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildMobileNoEditText(BuildContext context) {
    return CustomTextFormField(
      controller: mobileNoEditTextController,
      hintText: "1234567890",
      textInputType: TextInputType.phone,
    );
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context) {
    return CustomTextFormField(
      controller: addressEditTextController,
      hintText: "abcde abcde ",
    );
  }

  /// Section Widget
  Widget _buildPincodeEditText(BuildContext context) {
    return CustomTextFormField(
      controller: pincodeEditTextController,
      hintText: "123454",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildCouponsChipView(BuildContext context) {
    return Wrap(
      runSpacing: 10.v,
      spacing: 10.h,
      children:
          List<Widget>.generate(4, (index) => CouponschipviewItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildUpdateButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Update",
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1,
    );
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
      text: "SIGN UP",
      buttonStyle: CustomButtonStyles.outlineIndigo,
    );
  }
}
