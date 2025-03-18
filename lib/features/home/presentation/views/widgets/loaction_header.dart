import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Text('Current location',
                style: Styles.textStyle14.copyWith(
                  color: AppColors.lightGrayTextColor,
                )),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text('Jeddah, Saudi Arabia',
                    style: Styles.textStyle18.copyWith(
                        color: AppColors.darkTextColor,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  AssetsData.group,
                  width: 8,
                  height: 8,
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CircleAvatar(
            backgroundColor: AppColors.lightBagdesColor,
            child: SvgPicture.asset(AssetsData.moon),
          ),
        ),
      ],
    );
  }
}
