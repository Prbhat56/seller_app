import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seller_app/constant/api.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class UserprofiledetailsItemWidget extends StatefulWidget {
  final ProductModel product;

  const UserprofiledetailsItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<UserprofiledetailsItemWidget> createState() =>
      _UserprofiledetailsItemWidgetState();
}

class _UserprofiledetailsItemWidgetState
    extends State<UserprofiledetailsItemWidget> {
  Future<void> deleteProduct(BuildContext context, String dishId) async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString('access_token');
    if (accessToken == null) {
      return;
    }

   
    const String path = '/seller/catalogue/delete';

    final response = await http.get(
      Uri.parse('${ApiConstants.baseUrl}$path').replace(queryParameters: {
        'dishId': dishId,
      }),
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['message'] == 'delete successful') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Item deleted successfully')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to delete the item')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget.product.productImageUrl != null &&
                    widget.product.productImageUrl!.isNotEmpty)
                  Image.network(
                    widget.product.productImageUrl!,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    fit: BoxFit.cover,
                  ),
                if (widget.product.productImageUrl == null ||
                    widget.product.productImageUrl!.isEmpty)
                  Container(
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray800,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                    child: Icon(Icons.image, size: 60),
                  ),
                SizedBox(width: 16.v),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.productName,
                        style: theme.textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Desc: ${widget.product.productDescription}",
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "Price: ${widget.product.sellingPrice}",
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "Base Price: ${widget.product.basePrice}",
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "Stock: ${widget.product.stockQuantity}",
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTablerEdit,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Text(
                        "Edit",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => deleteProduct(context,
                     widget. product.productId!), 
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 13.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMdiDelete,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "Delete",
                            style: CustomTextStyles.bodySmallOnPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Active",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPath3391Onprimarycontainer,
                        height: 3.v,
                        width: 5.h,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 7.v,
                          bottom: 4.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
