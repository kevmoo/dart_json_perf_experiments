// GENERATED CODE - DO NOT MODIFY BY HAND

part of data;

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => new Data(
    json['first'] as String,
    json['last'] as String,
    json['count'] as int,
    json['strong'] as bool);

abstract class _$DataSerializerMixin {
  int get count;
  String get first;
  String get last;
  bool get strong;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'count': count,
        'first': first,
        'last': last,
        'strong': strong
      };
}
