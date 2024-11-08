import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miles_education_app/gen/assets.gen.dart';
import 'package:miles_education_app/theme/app_font_weight.dart';
import 'package:miles_education_app/theme/theme_extension.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.r),
      color: context.appTheme.black.blackOnePercent,
      //height: 48.h,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Good Morning!',
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontWeight: AppFontWeight.light,
                fontSize: 16.sp,
                color: context.appTheme.white,
              ),
            ),
            Text(
              name,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontWeight: AppFontWeight.medium,
                fontSize: 14.sp,
                color: context.appTheme.white,
              ),
            ),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              Assets.callUsLogo,
              height: 38.h,
              width: 115.w,
            ),
            SvgPicture.asset(Assets.talkToUs)
          ],
        ),
      ]),
    );
  }
}
