import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/freezed/example.freezed.dart';
part '../generated/json/example.g.dart';

@freezed
class ExampleModel with _$ExampleModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ExampleModel({
    required int id,
    required String name,
  }) = _ExampleModel;

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);
}
