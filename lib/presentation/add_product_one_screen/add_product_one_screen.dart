import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_drop_down.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

class AddProductOneScreen extends StatefulWidget {
  AddProductOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<AddProductOneScreen> createState() => _AddProductOneScreenState();
}

class _AddProductOneScreenState extends State<AddProductOneScreen> {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController nameController = TextEditingController();

  TextEditingController foodDescriptionController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController offerPriceEditTextController = TextEditingController();

  TextEditingController stockQuantityValueEditTextController =
      TextEditingController();

  TextEditingController timeEditTextController = TextEditingController();
    TextEditingController newtimeEditTextController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Future<String?> getAccessToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('accessToken');
}

   String? imageUrl; 

  Future<void> pickAndUploadImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      await uploadImage(imageFile);
    }
  }

  Future<void> uploadImage(File imageFile) async {
    var uri = Uri.parse('https://3a9p2qy68m.ap-south-1.awsapprunner.com/seller/catalouge/uploadImage');
    var request = http.MultipartRequest('POST', uri)
      ..files.add(await http.MultipartFile.fromPath('dish_image', imageFile.path));

    var response = await request.send();
    if (response.statusCode == 200) {
      var responseData = await response.stream.bytesToString();
      var decodedResponse = json.decode(responseData);
      setState(() {
        imageUrl = decodedResponse['image_url']; 
      });
    } else {
    print('Failed to load');
    }
  }
Future<void> updateDish() async {
  // Fetch the access token from shared preferences
  final accessToken = await getAccessToken();
  if (accessToken == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Access token not found')),
    );
    return;
  }

  final dishId = 'your_dish_id'; // Replace with actual dish ID

  final url = Uri.parse('https://3a9p2qy68m.ap-south-1.awsapprunner.com/seller/catalouge/updateDish');
  final response = await http.post(url, headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $accessToken',
  }, body: jsonEncode({
    'dishId': dishId,
    'dish_name': nameController.text,
    'dish_image_link': imageUrl, 
    'selling_price': double.tryParse(priceController.text) ?? 0.0,
    'base_price': double.tryParse(offerPriceEditTextController.text) ?? 0.0,
    'active': true, 
    'description': foodDescriptionController.text,
    'start_time': timeEditTextController.text, 
    'end_time': newtimeEditTextController.text, 
  }));

  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    if (responseData['status'] == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Product loaded successfully')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load product')),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Server error: ${response.statusCode}')),
    );
  }
}




  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 9.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFrame(context),
                  SizedBox(height: 21.v),
                  Text(
                    "Product Information",
                    style: CustomTextStyles.titleLargeMedium,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "Select Type ",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 7.v),
                  CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 29.v, 20.h, 29.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPath3391,
                        height: 5.v,
                        width: 9.h,
                      ),
                    ),
                    hintText: "Select Product Type",
                    hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                    items: dropdownItemList,
                    contentPadding: EdgeInsets.only(
                      left: 20.h,
                      top: 21.v,
                      bottom: 21.v,
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Food Nature",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 9.v),
                  CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 29.v, 20.h, 29.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPath3391,
                        height: 5.v,
                        width: 9.h,
                      ),
                    ),
                    hintText: "Non-Veg",
                    hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                    items: dropdownItemList1,
                    contentPadding: EdgeInsets.only(
                      left: 20.h,
                      top: 21.v,
                      bottom: 21.v,
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Food Name",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4.v),
                  CustomTextFormField(
                    controller: nameController,
                    hintText: "Food Name",
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "Food Description",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 8.v),
                  CustomTextFormField(
                    controller: foodDescriptionController,
                    hintText: "Food Description",
                    hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                    maxLines: 4,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 21.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL20,
                  ),
                  SizedBox(height: 16.v),
                  Text(
                    "Selling Price ",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: priceController,
                    hintText: "Selling price",
                    textInputAction: TextInputAction.done,
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
  Widget _buildFrame(BuildContext context) {
    return InkWell(
      onTap: (){
         pickAndUploadImage();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 100.h,
          vertical: 27.v,
        ),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            CustomImageView(
              imagePath: ImageConstant.imgMap,
              height: 26.v,
              width: 30.h,
            ),
            SizedBox(height: 21.v),
            Text(
              "Add Product Image",
              style: CustomTextStyles.labelLargePrimary,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodDescriptionEditText(BuildContext context) {
    return CustomTextFormField(
      controller: foodDescriptionController,
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
      controller: priceController,
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
      hintText: "StartTime",
      textInputAction: TextInputAction.done,
    );
  }
    Widget _buildTimeEditTextnew(BuildContext context) {
    return CustomTextFormField(
      width: 150.h,
      controller: newtimeEditTextController,
      hintText: "EndTime",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
Widget _buildEightySeven(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildTimeEditText(context),
      SizedBox(width: 10.h), 
      _buildTimeEditTextnew(context),
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
