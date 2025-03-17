import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/utils/assets_data.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';

class PropertyMetaRow extends StatelessWidget {
  final String capacity;
  final String rating;

  const PropertyMetaRow({
    super.key,
    required this.capacity,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Text(
            capacity,
            style:
                Styles.textStyle14.copyWith(color: AppColors.darkGrayTextColor),
          ),
          const Spacer(),
          SvgPicture.asset(AssetsData.star, width: 16),
          const SizedBox(width: 4),
          Text(
            rating,
            style: Styles.textStyle14.copyWith(color: AppColors.darkTextColor),
          ),
        ],
      ),
    );
  }
}
