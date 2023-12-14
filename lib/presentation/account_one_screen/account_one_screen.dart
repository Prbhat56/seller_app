import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/presentation/account_my_profile_one_screen/widgets/couponschipview2_item_widget.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/appbar_title_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_drop_down.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_switch.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';

class AccountOneScreen extends StatelessWidget {
  AccountOneScreen({Key? key})
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

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  bool isSelectedSwitch = false;

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
                  padding: EdgeInsets.only(top: 35.v),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        SizedBox(height: 9.v),
                        Text(
                          "Preference Zone",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 16.v, 27.h, 16.v),
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
                        SizedBox(height: 22.v),
                        Text(
                          "Coupons Titles",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 8.v),
                        _buildCouponsChipView(context),
                        SizedBox(height: 152.v),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildUpdate(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 53.v,
      leadingWidth: 215.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgEllipse12633x50,
        margin: EdgeInsets.only(
          right: 165.h,
          bottom: 20.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEllipse12830x62,
          margin: EdgeInsets.only(bottom: 23.v),
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
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
      text: "Update",
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1,
    );
  }

  /// Section Widget

  Widget _buildCouponsChipView(BuildContext context) {
    return Wrap(
      runSpacing: 10.v,
      spacing: 10.h,
      children:
          List<Widget>.generate(4, (index) => Couponschipview2ItemWidget()),
    );
  }
}
