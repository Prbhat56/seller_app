import 'package:flutter/material.dart';
import 'package:seller_app/presentation/welcome_screen/welcome_screen.dart';
import 'package:seller_app/presentation/signup_screen/signup_screen.dart';
import 'package:seller_app/presentation/login_screen/login_screen.dart';
import 'package:seller_app/presentation/home_screen/home_screen.dart';
import 'package:seller_app/presentation/add_product_one_screen/add_product_one_screen.dart';
import 'package:seller_app/presentation/add_product_screen/add_product_screen.dart';
import 'package:seller_app/presentation/account_one_screen/account_one_screen.dart';
import 'package:seller_app/presentation/account_two_screen/account_two_screen.dart';
import 'package:seller_app/presentation/my_order_one_screen/my_order_one_screen.dart';
import 'package:seller_app/presentation/my_order_two_screen/my_order_two_screen.dart';
import 'package:seller_app/presentation/my_account_screen/my_account_screen.dart';
import 'package:seller_app/presentation/my_order_screen/my_order_screen.dart';
import 'package:seller_app/presentation/account_screen/account_screen.dart';
import 'package:seller_app/presentation/change_password_screen/change_password_screen.dart';
import 'package:seller_app/presentation/transactions_screen/transactions_screen.dart';
import 'package:seller_app/presentation/faq_screen/faq_screen.dart';
import 'package:seller_app/presentation/notification_screen/notification_screen.dart';
import 'package:seller_app/presentation/notification_one_screen/notification_one_screen.dart';
import 'package:seller_app/presentation/frame_33659_screen/frame_33659_screen.dart';
import 'package:seller_app/presentation/account_my_profile_screen/account_my_profile_screen.dart';
import 'package:seller_app/presentation/account_my_profile_one_screen/account_my_profile_one_screen.dart';
import 'package:seller_app/presentation/frame_33658_screen/frame_33658_screen.dart';
import 'package:seller_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String signupScreen = '/signup_screen';

  static const String loginScreen = '/login_screen';

  static const String homeScreen = '/home_screen';

  static const String addProductOneScreen = '/add_product_one_screen';

  static const String addProductScreen = '/add_product_screen';

  static const String accountOneScreen = '/account_one_screen';

  static const String accountTwoScreen = '/account_two_screen';

  static const String myOrderOneScreen = '/my_order_one_screen';

  static const String myOrderTwoScreen = '/my_order_two_screen';

  static const String myAccountScreen = '/my_account_screen';

  static const String myOrderScreen = '/my_order_screen';

  static const String accountScreen = '/account_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String transactionsScreen = '/transactions_screen';

  static const String faqScreen = '/faq_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationOneScreen = '/notification_one_screen';

  static const String frame33659Screen = '/frame_33659_screen';

  static const String accountMyProfileScreen = '/account_my_profile_screen';

  static const String accountMyProfileOneScreen =
      '/account_my_profile_one_screen';

  static const String frame33658Screen = '/frame_33658_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    signupScreen: (context) => SignupScreen(),
    loginScreen: (context) => LoginScreen(),
    homeScreen: (context) => HomeScreen(),
    addProductOneScreen: (context) => AddProductOneScreen(),
    addProductScreen: (context) => AddProductScreen(),
    accountOneScreen: (context) => AccountOneScreen(),
    accountTwoScreen: (context) => AccountTwoScreen(),
    myOrderOneScreen: (context) => MyOrderOneScreen(),
    myOrderTwoScreen: (context) => MyOrderTwoScreen(),
    myAccountScreen: (context) => MyAccountScreen(),
    myOrderScreen: (context) => MyOrderScreen(),
    accountScreen: (context) => AccountScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    transactionsScreen: (context) => TransactionsScreen(),
    faqScreen: (context) => FaqScreen(),
    notificationScreen: (context) => NotificationScreen(),
    notificationOneScreen: (context) => NotificationOneScreen(),
    frame33659Screen: (context) => Frame33659Screen(),
    accountMyProfileScreen: (context) => AccountMyProfileScreen(),
    accountMyProfileOneScreen: (context) => AccountMyProfileOneScreen(),
    frame33658Screen: (context) => Frame33658Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
