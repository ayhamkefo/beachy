import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';

class PropertyInfoRow extends StatelessWidget {
  final String title;
  final String price;

  const PropertyInfoRow({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: Styles.textStyle16.copyWith(
                color: AppColors.darkTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              style:
                  Styles.textStyle14.copyWith(color: AppColors.darkTextColor),
              children: [
                TextSpan(
                  text: 'SAR ',
                  style: Styles.textStyle14
                      .copyWith(color: AppColors.darkGrayTextColor),
                ),
                TextSpan(
                  text: price,
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' /night',
                  style: Styles.textStyle14
                      .copyWith(color: AppColors.darkGrayTextColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
