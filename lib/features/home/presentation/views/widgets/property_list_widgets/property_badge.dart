import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/utils/assets_data.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';

class PropertyBadge extends StatelessWidget {
  final bool isNew;

  const PropertyBadge({super.key, required this.isNew});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isNew
            ? AppColors.yellowColor
            : AppColors.redColor.withOpacity(0.72),
        borderRadius: BorderRadius.circular(4),
      ),
      child: isNew
          ? Text('New',
              style: Styles.textStyle13.copyWith(
                color: AppColors.backgroundColor,
                fontWeight: FontWeight.bold,
              ))
          : SvgPicture.asset(AssetsData.fire),
    );
  }
}
