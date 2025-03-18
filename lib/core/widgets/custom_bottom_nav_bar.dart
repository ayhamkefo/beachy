import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/assets_data.dart';
import '../utils/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.purpelTextColor,
      unselectedItemColor: AppColors.darkGrayTextColor,
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AssetsData.explore), label: 'Explore'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AssetsData.wishlist), label: 'Wishlist'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AssetsData.booking), label: 'Booking'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AssetsData.profile), label: 'Profile'),
      ],
    );
  }
}
