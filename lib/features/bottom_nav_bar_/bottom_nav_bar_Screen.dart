import 'package:bookstore/core/theme/app_colors.dart';
import 'package:bookstore/features/Profile/ui/profile_screen.dart';
import 'package:bookstore/features/cart/ui/cart_screen.dart';
import 'package:bookstore/features/home/ui/home_screen.dart';
import 'package:bookstore/features/wishlist/ui/wishlist_screen.dart';
import 'package:bookstore/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int activeIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    WishlistScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        showUnselectedLabels: false,
        selectedItemColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.icons.home,
              colorFilter: ColorFilter.mode(
                activeIndex == 0 ? AppColors.primaryColor : AppColors.blakColor,
                BlendMode.srcIn,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.icons.bookmark,
              colorFilter: ColorFilter.mode(
                activeIndex == 1 ? AppColors.primaryColor : AppColors.blakColor,
                BlendMode.srcIn,
              ),
            ),
            label: "wishlist",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.icons.category,
              colorFilter: ColorFilter.mode(
                activeIndex == 2 ? AppColors.primaryColor : AppColors.blakColor,
                BlendMode.srcIn,
              ),
            ),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.icons.profile,
              colorFilter: ColorFilter.mode(
                activeIndex == 3 ? AppColors.primaryColor : AppColors.blakColor,
                BlendMode.srcIn,
              ),
            ),
            label: "profile",
          ),
        ],
      ),
      body: SafeArea(child: screens[activeIndex]),
    );
  }
}
