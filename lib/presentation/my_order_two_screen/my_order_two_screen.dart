import 'dart:convert';

import 'package:seller_app/constant/api.dart';
import 'package:seller_app/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../my_order_two_screen/widgets/userprofiledetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:http/http.dart'as http;

class MyOrderTwoScreen extends StatefulWidget {
  const MyOrderTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<MyOrderTwoScreen> createState() => _MyOrderTwoScreenState();
}

class _MyOrderTwoScreenState extends State<MyOrderTwoScreen> {
    late Future<List<ProductModel>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = fetchProducts();
  }

  Future<List<ProductModel>> fetchProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString('access_token');
  
    const String path = '/seller/allDish';

    final response = await http.get(
      Uri.parse('${ApiConstants.baseUrl}$path'),
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> productsJson = json.decode(response.body);
      List<ProductModel> products = productsJson.map((json) => ProductModel.fromJson(json)).toList();
      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 9.v,
            right: 20.h,
          ),
          child:FutureBuilder<List<ProductModel>>(
        future: futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(height: 20.v),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return UserprofiledetailsItemWidget(product: snapshot.data![index]);
              },
            );
          } else {
            return Center(child: Text('No products found'));
          }
        },
      ),
        ),
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
          top: 10.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "My Products",
      ),
    );
  }
}
