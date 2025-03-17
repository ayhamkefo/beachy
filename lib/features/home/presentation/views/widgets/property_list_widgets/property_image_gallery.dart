import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/utils/assets_data.dart';
import '../../../../../../core/utils/colors.dart';
import 'property_badge.dart';

class PropertyImageGallery extends StatelessWidget {
  final List<String> images;
  final bool isNew;

  const PropertyImageGallery({
    super.key,
    required this.images,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: PageView.builder(
              controller: pageController,
              itemCount: images.length,
              itemBuilder: (context, index) => Image.network(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 12,
          right: 12,
          child: IconButton(
            icon: SvgPicture.asset(AssetsData.heart),
            onPressed: () {},
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
            ),
          ),
        ),
        Positioned(
          top: 12,
          left: 12,
          child: PropertyBadge(isNew: isNew),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Center(
            child: SmoothPageIndicator(
              controller: pageController,
              count: images.length,
              effect: CustomizableEffect(
                spacing: 8,
                dotDecoration: DotDecoration(
                  color: AppColors.backgroundColor.withOpacity(0.5),
                  width: 8,
                  height: 8,
                  borderRadius: BorderRadius.circular(999),
                ),
                activeDotDecoration: DotDecoration(
                  color: AppColors.backgroundColor,
                  width: 10,
                  height: 10,
                  dotBorder: const DotBorder(width: .5),
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
