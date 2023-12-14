import '../faq_screen/widgets/expandablelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:seller_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(top: 20.v, bottom: 5.v),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ExpandablelistItemWidget();
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgRefresh,
            margin: EdgeInsets.only(left: 20.h, top: 9.v, bottom: 10.v),
            onTap: () {
              onTapRefresh(context);
            }),
        title: AppbarSubtitle(text: "FAQ", margin: EdgeInsets.only(left: 92.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.fromLTRB(21.h, 18.v, 21.h, 11.v))
        ]);
  }

  /// Navigates to the myAccountScreen when the action is triggered.
  onTapRefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myAccountScreen);
  }
}
