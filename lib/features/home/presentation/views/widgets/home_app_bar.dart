import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'category_tab_bar.dart';
import 'loaction_header.dart';
import 'search_bar_section.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: const LocationHeader(),
      bottom: PreferredSize(
        preferredSize:
            Size.fromHeight(getAppBarSize(MediaQuery.sizeOf(context).height)),
        child: Column(
          children: [
            const SearchBarSection(),
            CategoryTabBar(tabController: _tabController),
          ],
        ),
      ),
    );
  }

  double getAppBarSize(double hegit) {
    if (hegit >= 750) return hegit * 0.18;
    if (hegit >= 600 && hegit < 750) return hegit * 0.2;
    if (hegit >= 500 && hegit < 600) return hegit * 0.24;
    return hegit * 0.28;
  }
}
