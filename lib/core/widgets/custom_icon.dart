import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50.h,
      right: 20.w,
      child: IconButton(
        onPressed: () {
          if (context.locale.languageCode == "en") {
            context.setLocale(const Locale("ar"));
          } else {
            context.setLocale(const Locale("en"));
          }
        },
        icon: const Icon(Icons.language),
      ),
    );
  }
}
