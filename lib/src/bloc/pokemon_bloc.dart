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

    pokemonId.addAsyncValidators([_fetch]);
  }

  @override
  void onSubmitting() {
    _fetch(pokemonId.value);
  }

  Future<String> fetchRandom() async => _pokemonRequest(
        () => fetchPokemon(
          randomInt(
            Constants.minimumPokemonId,
            Constants.maximumPokemonId + 1,
          ).run(),
        ),
      );

  Future<String> _fetch(String pokemonId) async => _pokemonRequest(
        () => fetchPokemonFromUserInput(pokemonId),
      );

  Future<String> _pokemonRequest(
      TaskEither<String, Pokemon> Function() request) async {
    emitLoading();
    final TaskEither<String, Pokemon> pokemon = request();
    return (await pokemon.run()).fold((error) {
      emitFailure(failureResponse: error);
      return error;
    }, (pokemon) {
      emitSuccess(successResponse: pokemon);
      return GclConst.emptyString;
    });
  }
}
