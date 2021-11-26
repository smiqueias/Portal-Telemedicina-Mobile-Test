import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portaltelemedicina_mobile_test/src/core/app_colors.dart';
import 'package:portaltelemedicina_mobile_test/src/core/app_textstyles.dart';

class SpecialistCardComponent extends StatelessWidget {
  final String icon;
  final String labelSpecialist;
  final String numberDoctors;
  final Color backgroundColor;
  final Color iconColor;

  const SpecialistCardComponent({
    Key? key,
    required this.icon,
    required this.labelSpecialist,
    required this.numberDoctors,
    required this.backgroundColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      width: 115.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.magenta.withOpacity(0.5),
            offset: const Offset(0, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(left: 8.h, top: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.h),
                child: SvgPicture.asset(
                  icon,
                  color: iconColor,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              labelSpecialist,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.ubuntuRegular16Bold.apply(color: AppColors.white),
            ),
            SizedBox(height: 4.h),
            Text(
              'Specialists',
              style: AppTextStyle.ubuntuRegular16Bold.apply(color: AppColors.white),
            ),
            SizedBox(height: 4.h),
            Text(
              '$numberDoctors Doctors',
              style: AppTextStyle.ubuntuRegular14.apply(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
