import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_fp_with_gext/src/data/constants.dart';
import 'package:pokemon_fp_with_gext/src/data/models/pokemon.dart';
import 'package:pokemon_fp_with_gext/src/data/providers/fetch_pokemon.dart';

part 'pokemon_state.dart';
part 'pokemon_cubit.freezed.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit() : super(const PokemonState.initial());

  Future<Unit> fetchRandom() async => _pokemonRequest(
        () => fetchPokemon(
          randomInt(
            Constants.minimumPokemonId,
            Constants.maximumPokemonId + 1,
          ).run(),
        ),
      );

  /// User request, try to convert user input to [int] and then
  /// request the pokemon if successful.
  Future<Unit> fetch(String pokemonId) async => _pokemonRequest(
        () => fetchPokemonFromUserInput(pokemonId),
      );

  Future<Unit> _pokemonRequest(
      TaskEither<String, Pokemon> Function() requset) async {
    emit(const PokemonState.loading());
    final pokemon = requset();
    (await pokemon.run()).match((error) => emit(PokemonState.error(error)),
        (pokemon) => emit(PokemonState.success(pokemon)));
    return unit;
  }
}
