library data;

import 'package:json_serializable/annotations.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Object with _$DataSerializerMixin {
  int count;
  String first, last;
  bool strong;

  Data(this.first, this.last, this.count, this.strong);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
