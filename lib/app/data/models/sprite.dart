import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprite.freezed.dart';
part 'sprite.g.dart';

@freezed
class Sprite with _$Sprite {
  factory Sprite(final String frontDefault) = _Sprite;

  factory Sprite.fromJson(Map<String, dynamic> json) => _$SpriteFromJson(json);
}
