import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';
import 'property_image_gallery.dart';
import 'property_info_row.dart';
import 'property_meta_row.dart';

class PropertyItemWidget extends StatelessWidget {
  final String title;
  final String price;
  final String rating;
  final String capacity;
  final bool isNew;
  final List<String> images;

  const PropertyItemWidget({
    super.key,
    required this.title,
    required this.price,
    required this.rating,
    required this.capacity,
    required this.images,
    this.isNew = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: AppColors.backgroundColor,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PropertyImageGallery(images: images, isNew: isNew),
          const SizedBox(height: 12),
          PropertyInfoRow(title: title, price: price),
          const SizedBox(height: 8),
          PropertyMetaRow(capacity: capacity, rating: rating),
        ],
      ),
    );
  }
}
