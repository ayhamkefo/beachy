import 'package:flutter/material.dart';
import '../../../data/models/apartments_model.dart';
import 'property_list_widgets/property_item_widget.dart';

class PropertyListSection extends StatelessWidget {
  final List<Apartment> apartments;
  final bool hasMore;

  const PropertyListSection({
    super.key,
    required this.apartments,
    required this.hasMore,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index < apartments.length) {
            final apartment = apartments[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  if (index > 0) const SizedBox(height: 16),
                  PropertyItemWidget(
                    title: apartment.title!,
                    price: apartment.price!,
                    rating: apartment.reservationsCount.toString(),
                    capacity: 'Up to ${apartment.adults} Persons',
                    isNew: apartment.tag == 'new',
                    images: apartment.images.map((e) => e.src).toList(),
                  ),
                ],
              ),
            );
          } else {
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }
        },
        childCount: apartments.length + (hasMore ? 1 : 0),
      ),
    );
  }
}
