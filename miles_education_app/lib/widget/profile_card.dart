import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_education_app/theme/theme.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(children: [
            ColoredBox(
              color: context.appTheme.white,
              child: SizedBox.square(
                dimension: 60,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              'Name',
              style: TextStyle(
                color: context.appTheme.white,
                fontFamily: 'SF UI Display',
                fontWeight: AppFontWeight.light,
                fontSize: 10.sp,
              ),
            )
          ]);
        },
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 16.w,
        ),
      ),
    );
  }
}
