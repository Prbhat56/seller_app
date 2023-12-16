import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seller_app/constant/api.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/models/order_model.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {

    Future<void> performOrderAction(String action, String orderId) async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString('access_token');
    if (accessToken == null) {
   
      return;
    }

 
    final String path = '/seller/order/orderAction';
    
    final response = await http.get(
      Uri.parse(ApiConstants.baseUrl + path).replace(queryParameters: {
        'action': action,
        'orderId': orderId,
      }),
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
   
      setState(() {
        futureOrders = fetchOrders(); 
      });
    } else {
    
      throw Exception('Failed to perform order action');
    }
  }
  Future<List<Order>> fetchOrders() async {

  const String path = '/seller/order/getAllOrders';
  final prefs = await SharedPreferences.getInstance();
  final String? accessToken = prefs.getString('access_token');

  final response = await http.get(
    Uri.parse('${ApiConstants.baseUrl}$path'),
    headers: {
      'Authorization': 'Bearer $accessToken',
    },
  );

  if (response.statusCode == 200) {
    List<dynamic> ordersJson = json.decode(response.body);
    List<Order> orders = ordersJson.map((json) => Order.fromJson(json)).toList();
    return orders;
  } else {
    throw Exception('Failed to load orders');
  }
}
 late Future<List<Order>> futureOrders;

  @override
  void initState() {
    super.initState();
    futureOrders = fetchOrders();
  }
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
       body: FutureBuilder<List<Order>>(
          future: futureOrders,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return _buildOrderCard(context, snapshot.data![index]);
                },
              );
            } else {
              return Center(child: Text('No orders found'));
            }
          },
        ),
      ),
    );
  }

Widget _buildOrderCard(BuildContext context, Order order) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                order.orderId,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              // Implement the show more/less toggle logic as needed
              TextButton(
                onPressed: () {
                  // Toggle show more/less
                },
                child: Text("Show More"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Estimated Arrival"),
                  Text(
                    "25 min",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("${order.orderedItems.length} Items"),
                  // Add logic to display the shop name or other details
                  Text("ShopName"),
                ],
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: order.orderedItems.length,
            itemBuilder: (context, index) {
              final item = order.orderedItems[index];
              return ListTile(
                leading: Icon(Icons.fastfood), // Replace with item image
                title: Text("${item.quantity} * ${item.itemName}"),
                trailing: Text("\$${item.price.toStringAsFixed(2)}"),
              );
            },
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total"),
              Text("\$${order.totalAmount.toStringAsFixed(2)}"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildAcceptButton(context, order), // Pass order to this function
              _buildRejectButton(context, order), // Pass order to this function
            ],
          ),
        ],
      ),
    ),
  );
}

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 58.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRefresh,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 8.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "My Order",
      ),
    );
  }

Widget _buildAcceptButton(BuildContext context, Order order) {
  return Expanded(
    child: CustomElevatedButton(
      height: 43.v,
      text: "Accept",
      margin: EdgeInsets.only(right: 5.h),
      buttonStyle: CustomButtonStyles.outlineBlueGrayF,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
    onPressed: () => performOrderAction('accept', order.orderId),
    ),
  );
}

Widget _buildRejectButton(BuildContext context, Order order) {
  return Expanded(
    child: CustomElevatedButton(
      height: 43.v,
      text: "Reject",
      margin: EdgeInsets.only(left: 5.h),
      buttonStyle: CustomButtonStyles.outlineDeepOrangeTL21,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        onPressed: () => performOrderAction('reject', order.orderId),
    ),
  );
}







}
