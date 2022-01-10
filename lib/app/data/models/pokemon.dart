import 'package:freezed_annotation/freezed_annotation.dart';

import 'sprite.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon(final int id, final String name, final int height,
      final int weight, final Sprite sprites) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
