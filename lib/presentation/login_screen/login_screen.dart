import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seller_app/constant/api.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';

import 'package:seller_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    Future<void> login() async {
    var url = Uri.parse('${ApiConstants.baseUrl}/seller/login');
    var response = await http.get(url, headers: {
      'user_email': emailController.text,
      'user_password': passwordController.text,
    });

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse.containsKey('token')) {
      
      SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('accessToken', jsonResponse['token']);

      
        Navigator.pushNamed(context, AppRoutes.homeScreen);
      } else {
    
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text(jsonResponse['message']),
          ),
        );
      }
    } else {
      // Handle HTTP error
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Failed to connect to server'),
        ),
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
        body: Column(
          children: [
            Text('Login',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.h,
                    fontWeight: FontWeight.bold)),
            Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 38.v,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "E-mail",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: "Your email or phone",
                      textInputType: TextInputType.emailAddress,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 19.v,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    CustomTextFormField(
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 25.v, 22.h, 27.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 12.v,
                          width: 17.h,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 65.v,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 32.v),
                    Text(
                      "Forgot password?",
                      style: CustomTextStyles.bodyMediumSofiaProPrimary,
                    ),
                    SizedBox(height: 27.v),
                    CustomElevatedButton(
                      onPressed: () {
                         if (_formKey.currentState!.validate()) {
        login();
      }
                      },
                      height: 60.v,
                      text: "Login".toUpperCase(),
                      margin: EdgeInsets.symmetric(horizontal: 36.h),
                      buttonStyle: CustomButtonStyles.outlineIndigoTL28,
                    ),
                    SizedBox(height: 32.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: CustomTextStyles
                                .bodyMediumSofiaProErrorContainer,
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              child: Text(
                                'Sign Up',
                                style: CustomTextStyles
                                    .bodyMediumSofiaProPrimary14,
                              ),
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.signupScreen);
                              },
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ],
        ),
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
}
