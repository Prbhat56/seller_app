import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController foodDescriptionEditTextController =
      TextEditingController();

  TextEditingController sellingPriceEditTextController =
      TextEditingController();

  TextEditingController offerPriceEditTextController = TextEditingController();

  TextEditingController stockQuantityValueEditTextController =
      TextEditingController();

  TextEditingController timeEditTextController = TextEditingController();

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
            vertical: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Food Description",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 8.v),
              _buildFoodDescriptionEditText(context),
              SizedBox(height: 11.v),
              Text(
                "Selling Price ",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 3.v),
              _buildSellingPriceEditText(context),
              SizedBox(height: 9.v),
              Text(
                "Offer Price ",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 5.v),
              _buildOfferPriceEditText(context),
              SizedBox(height: 10.v),
              Text(
                "Stock",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 4.v),
              _buildStockQuantityValueEditText(context),
              SizedBox(height: 9.v),
              Text(
                "Available From",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 5.v),
              _buildEightySeven(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSubmitButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 58.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRefresh,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 9.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Add Product",
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodDescriptionEditText(BuildContext context) {
    return CustomTextFormField(
      controller: foodDescriptionEditTextController,
      hintText: "Food Description",
      hintStyle: CustomTextStyles.bodyMediumOnPrimary,
      maxLines: 4,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 21.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL20,
    );
  }

  /// Section Widget
  Widget _buildSellingPriceEditText(BuildContext context) {
    return CustomTextFormField(
      controller: sellingPriceEditTextController,
      hintText: "Selling price",
    );
  }

  /// Section Widget
  Widget _buildOfferPriceEditText(BuildContext context) {
    return CustomTextFormField(
      controller: offerPriceEditTextController,
      hintText: "Price",
    );
  }

  /// Section Widget
  Widget _buildStockQuantityValueEditText(BuildContext context) {
    return CustomTextFormField(
      controller: stockQuantityValueEditTextController,
      hintText: "Stock Quantity",
    );
  }

  /// Section Widget
  Widget _buildTimeEditText(BuildContext context) {
    return CustomTextFormField(
      width: 150.h,
      controller: timeEditTextController,
      hintText: "Time",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildEightySeven(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: theme.colorScheme.onPrimaryContainer,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.blueGray1003f.withOpacity(0.25),
              width: 1.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 40.v,
            width: 150.h,
            padding: EdgeInsets.only(
              left: 60.h,
              top: 10.v,
              bottom: 10.v,
            ),
            decoration: AppDecoration.outlineBlueGrayF.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Time",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Time",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 23.v,
            bottom: 15.v,
          ),
          child: SizedBox(
            width: 10.h,
            child: Divider(
              color: appTheme.gray800,
            ),
          ),
        ),
        _buildTimeEditText(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Submit",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 31.v,
      ),
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1,
    );
  }
}
