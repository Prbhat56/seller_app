import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          signupText: "welcome",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "signup",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "add product One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addProductOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "add product",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "Account One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "account Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "my order One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myOrderOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "my order Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myOrderTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "my account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "my order",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myOrderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "change password ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "transactions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transactionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "FAQ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.faqScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "Notification One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "Frame 33659",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame33659Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "Account(my profile)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountMyProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "account(my profile) One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountMyProfileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          signupText: "Frame 33658",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame33658Screen),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String signupText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  signupText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
