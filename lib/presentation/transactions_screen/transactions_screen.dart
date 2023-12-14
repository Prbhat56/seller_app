import '../transactions_screen/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 20.h, top: 18.v, right: 41.h),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 15.v);
                    },
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return UserprofilelistItemWidget();
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgRefresh,
            margin: EdgeInsets.only(left: 20.h, top: 8.v, bottom: 11.v),
            onTap: () {
              onTapRefresh(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Transactions"));
  }

  /// Navigates to the myAccountScreen when the action is triggered.
  onTapRefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myAccountScreen);
  }
}
