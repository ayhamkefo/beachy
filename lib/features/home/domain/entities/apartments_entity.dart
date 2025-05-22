import 'apartment_entity.dart';
import 'meta_entity.dart';

class ApartmentsEntity {
  final List<ApartmentEntity> data;
  final MetaEntity meta;

  ApartmentsEntity({
    required this.data,
    required this.meta,
  });
}
