import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portaltelemedicina_mobile_test/src/core/app_colors.dart';
import 'package:portaltelemedicina_mobile_test/src/core/app_icons.dart';
import 'package:portaltelemedicina_mobile_test/src/core/app_textstyles.dart';
import 'package:portaltelemedicina_mobile_test/src/modules/home/view/components/specialist_card_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: "Hello, \n",
                  style: AppTextStyle.ubuntuRegular16,
                  children: [
                    TextSpan(
                      text: "Lorelle Luuna",
                      style: AppTextStyle.ubuntuBold,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Text(
                'Specialists',
                style: AppTextStyle.ubuntuRegular16Bold,
              ),
              SizedBox(height: 8.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SpecialistCardComponent(
                      icon: AppIcons.heartShapeOutlineLifeline,
                      labelSpecialist: "Cardiologist",
                      numberDoctors: "40",
                      backgroundColor: AppColors.red,
                      iconColor: AppColors.red,
                    ),
                    SizedBox(width: 12.w),
                    const SpecialistCardComponent(
                      icon: AppIcons.heartShapeOutlineLifeline,
                      labelSpecialist: "Dental",
                      numberDoctors: "35",
                      backgroundColor: AppColors.yellow,
                      iconColor: AppColors.yellow,
                    ),
                    SizedBox(width: 12.w),
                    const SpecialistCardComponent(
                      icon: AppIcons.heartShapeOutlineLifeline,
                      labelSpecialist: "Dermatologist",
                      numberDoctors: "12",
                      backgroundColor: AppColors.purple,
                      iconColor: AppColors.purple,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
