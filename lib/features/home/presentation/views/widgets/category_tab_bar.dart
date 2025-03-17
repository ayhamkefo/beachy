import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CategoryTabBar extends StatefulWidget {
  const CategoryTabBar({super.key, required this.tabController});
  final TabController tabController;
  @override
  State<CategoryTabBar> createState() => _CategoryTabBarState();
}

class _CategoryTabBarState extends State<CategoryTabBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TabBar(
        controller: widget.tabController,
        isScrollable: true,
        labelColor: AppColors.darkTextColor,
        unselectedLabelColor: AppColors.lightGrayTextColor,
        indicatorColor: AppColors.darkTextColor,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        tabs: [
          Row(
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: SvgPicture.asset(AssetsData.category),
              ),
              const SizedBox(
                width: 5,
              ),
              const Tab(text: 'All'),
            ],
          ),
          const Tab(text: 'Villa'),
          const Tab(text: 'Resorts'),
          const Tab(text: 'Apartments'),
        ],
      ),
    );
  }
}
