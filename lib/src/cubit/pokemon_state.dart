part of 'pokemon_cubit.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState.initial() = _Initial;
  const factory PokemonState.loading() = _Loading;
  const factory PokemonState.error(String string) = _error;
  const factory PokemonState.success(Pokemon pokemon) = _success;
}
