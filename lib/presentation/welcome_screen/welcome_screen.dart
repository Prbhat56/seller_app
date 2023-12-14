import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/custom_outlined_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup199,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 37.v,
                ),
                decoration:
                    AppDecoration.gradientBlueGrayToOnSecondaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 114.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 252.h,
                        margin: EdgeInsets.only(right: 67.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Welcome to ",
                                style: CustomTextStyles.displayMediumAclonica,
                              ),
                              TextSpan(
                                text: "HOM",
                                style: CustomTextStyles
                                    .displayMediumAclonicaPrimary,
                              ),
                              TextSpan(
                                text: "EATZ",
                                style: CustomTextStyles
                                    .displayMediumAclonicaOrange100,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 274.v),
                    _buildSignInWithStack(context),
                    SizedBox(height: 34.v),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.signupScreen);
                      },
                      child: CustomOutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.signupScreen);
                        },
                        text: "Start with email or phone",
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 37.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 3.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "Already have an account? ",
                              style: CustomTextStyles
                                  .bodyLargeSofiaProOnPrimaryContainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.loginScreen);
                              },
                              child: Text(
                                "Sign In",
                                style: CustomTextStyles
                                    .titleMediumSofiaProOnPrimaryContainer
                                    .copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.v),
                    SizedBox(
                      width: 134.h,
                      child: Divider(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInWithStack(BuildContext context) {
    return SizedBox(
      height: 16.v,
      width: 293.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              " sign in with",
              style: CustomTextStyles.titleMediumSofiaProOnPrimaryContainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup17868,
            height: 1.v,
            width: 293.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
