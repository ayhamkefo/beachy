import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lightBagdesColor,
        borderRadius: BorderRadius.circular(42),
      ),
      child: Row(
        children: [
          SvgPicture.asset(AssetsData.discount),
          const SizedBox(width: 12),
          Flexible(
            child: RichText(
              text: TextSpan(
                style: Styles.textStyle14.copyWith(
                  color: AppColors.darkTextColor,
                ),
                children: [
                  TextSpan(
                    text: 'Don’t miss out on a ',
                    style: Styles.textStyle14.copyWith(
                      color: AppColors.darkGrayTextColor,
                    ),
                  ),
                  TextSpan(
                    text: '15% discount ',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkTextColor,
                    ),
                  ),
                  TextSpan(
                    text:
                        'on your first reservation! Reserve your spot now and enjoy a comfortable stay.',
                    style: Styles.textStyle14.copyWith(
                      color: AppColors.darkGrayTextColor,
                    ),
                  ),
                ],
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
