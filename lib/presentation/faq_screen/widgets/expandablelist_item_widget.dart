import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';

// ignore: must_be_immutable
class ExpandablelistItemWidget extends StatelessWidget {
  const ExpandablelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      margin: EdgeInsets.only(top: 20.v),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "How can I raise a ticket?",
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
          trailing: CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 8.v,
            width: 16.h,
            margin: EdgeInsets.only(
              left: 78.h,
              top: 6.v,
              bottom: 5.v,
            ),
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 14.v,
                bottom: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 241.h,
                    margin: EdgeInsets.only(right: 38.h),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis rhoncus sem non max dignissim. Maecenas porta ex sit amet sollicitudin sqollicitudin.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallInterBlack900,
                    ),
                  ),
                ],
              ),
            ),
          ],
          onExpansionChanged: (value) {},
        ),
      ),
    );
  }
}
