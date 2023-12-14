import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/custom_drop_down.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';

class Frame33658Screen extends StatelessWidget {
  Frame33658Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController couponCodeEditTextController = TextEditingController();

  TextEditingController minOrderAmountEditTextController =
      TextEditingController();

  TextEditingController amountEditTextController = TextEditingController();

  TextEditingController amountEditTextController1 = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 40.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Coupon Code",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 3.v),
              _buildCouponCodeEditText(context),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Description",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 3.v),
              _buildMinOrderAmountEditText(context),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Amount in %",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 5.v),
              _buildAmountEditText(context),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Min Order Amount",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 5.v),
              _buildAmountEditText1(context),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Use ",
                  style: theme.textTheme.bodyMedium,
                ),
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
                hintText: "Once",
                items: dropdownItemList,
                onChanged: (value) {},
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSaveButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCouponCodeEditText(BuildContext context) {
    return CustomTextFormField(
      controller: couponCodeEditTextController,
      hintText: "abcde abcde ",
    );
  }

  /// Section Widget
  Widget _buildMinOrderAmountEditText(BuildContext context) {
    return CustomTextFormField(
      controller: minOrderAmountEditTextController,
      hintText: "Text",
    );
  }

  /// Section Widget
  Widget _buildAmountEditText(BuildContext context) {
    return CustomTextFormField(
      controller: amountEditTextController,
      hintText: "Text",
    );
  }

  /// Section Widget
  Widget _buildAmountEditText1(BuildContext context) {
    return CustomTextFormField(
      controller: amountEditTextController1,
      hintText: "Text",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Save",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 45.v,
      ),
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1,
    );
  }
}
