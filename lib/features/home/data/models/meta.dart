import 'package:beachy/features/home/domain/entities/meta_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta extends MetaEntity {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'per_page')
  final int perPage;
  final int total;
  @JsonKey(name: 'has_more_pages')
  final bool hasMorePages;

  Meta({
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
    required this.hasMorePages,
  }) : super(
          currentPage: currentPage,
          lastPage: lastPage,
          perPage: perPage,
          total: total,
          hasMorePages: hasMorePages,
        );

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);

  MetaEntity toEntity() {
    return MetaEntity(
      currentPage: currentPage,
      lastPage: lastPage,
      perPage: perPage,
      total: total,
      hasMorePages: hasMorePages,
    );
  }
}
