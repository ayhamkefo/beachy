import 'package:beachy/core/widgets/custom_error_widget.dart';
import 'package:beachy/features/home/presentation/veiw-model/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/custom_bottom_nav_bar.dart';
import 'widgets/category_tab_bar.dart';
import 'widgets/discount_banner.dart';
import 'widgets/loaction_header.dart';
import 'widgets/property_list_section.dart';
import 'widgets/search_bar_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late ScrollController scrollController;

  late final TabController _tabController;
  @override
  void initState() {
    context.read<HomeBloc>().add(ResetPagination());
    scrollController = ScrollController();
    scrollController.addListener(onScroll);
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void onScroll() {
    final currentScroll = scrollController.offset;
    final maxScroll = scrollController.position.maxScrollExtent;
    if (currentScroll >= (maxScroll * 0.9)) {
      context.read<HomeBloc>().add(FetchApartments());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.backgroundColor,
            elevation: 0,
            scrolledUnderElevation: 0,
            title: const LocationHeader(),
            bottom: PreferredSize(
              preferredSize:
                  Size.fromHeight(MediaQuery.sizeOf(context).height * 0.15),
              child: Column(
                children: [
                  const SearchBarSection(),
                  CategoryTabBar(tabController: _tabController),
                ],
              ),
            ),
          ),
        ],
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.status == HomeStatus.initial) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.status == HomeStatus.failure) {
              return CustomErrorWidget(
                errorMessage: state.errorMessage!,
                onRetry: () => context.read<HomeBloc>().add(FetchApartments()),
              );
            }
            return CustomScrollView(
              controller: scrollController,
              slivers: [
                const SliverToBoxAdapter(child: DiscountBanner()),
                PropertyListSection(
                    apartments: state.apartments,
                    hasMore: !state.hasReachedMax),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
