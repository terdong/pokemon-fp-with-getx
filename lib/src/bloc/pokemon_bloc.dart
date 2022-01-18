import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gcl_for_flutter/gcl.dart';
import 'package:pokemon_fp_with_gext/src/data/constants.dart';
import 'package:pokemon_fp_with_gext/src/data/models/pokemon.dart';
import 'package:pokemon_fp_with_gext/src/data/providers/fetch_pokemon.dart';

class PokemonBloc extends FormBloc<Pokemon, String> with LoggerProvider {
  final pokemonId = TextFieldBloc(
    validators: [FieldBlocValidators.required],
    asyncValidatorDebounceTime: const Duration(milliseconds: 1000),
  );

  PokemonBloc() {
    addFieldBlocs(fieldBlocs: [pokemonId]);

    pokemonId.addAsyncValidators([_checkUsername]);

    /*    pokemonId.addAsyncValidators(
      [_checkUsername],
    ); */
  }

  Future<String?> _checkUsername(String pokemonId) async {
    return validateUserPokemonId(pokemonId).match((l) {
      return l;
    }, (r) {
      _fetch();
      return null;
    }).run();
  }

  @override
  void onSubmitting() {
    logd(pokemonId.value);
    _fetch();
  }

  Future<Unit> fetchRandom() async => _pokemonRequest(
        () => fetchPokemon(
          randomInt(
            Constants.minimumPokemonId,
            Constants.maximumPokemonId + 1,
          ).run(),
        ),
      );

  Future<Unit> _fetch() async => _pokemonRequest(
        () => fetchPokemonFromUserInput(pokemonId.value),
      );

  Future<Unit> _pokemonRequest(
      TaskEither<String, Pokemon> Function() requset) async {
    emitLoading();
    final pokemon = requset();
    (await pokemon.run()).match((error) => emitFailure(failureResponse: error),
        (pokemon) => emitSuccess(successResponse: pokemon));
    return unit;
  }
}
