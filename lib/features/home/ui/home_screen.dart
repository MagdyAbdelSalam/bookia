import 'package:bookstore/features/home/ui/widgets/home_app_bar.dart';
import 'package:bookstore/features/home/ui/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeAppBar(),
        Gap(25.h),
        HomeSlider(),
      ],
    );
  }
}
