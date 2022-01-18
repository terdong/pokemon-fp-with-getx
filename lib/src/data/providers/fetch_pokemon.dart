import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon_fp_with_gext/src/data/constants.dart';
import 'package:pokemon_fp_with_gext/src/data/models/pokemon.dart';

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

IOEither<String, int> _parseStringToInt(String str) => IOEither.tryCatch(
    () => str.parseInt(),
    (error, stackTrace) =>
        'Cannot convert input to valid pokemon id (it must be a number)!');

IOEither<String,
    int> validateUserPokemonId(String pokemonId) => _parseStringToInt(
        pokemonId)
    .flatMap((intPokemonId) => IOEither.fromPredicate(
        intPokemonId,
        (id) =>
            id >= Constants.minimumPokemonId &&
            id <= Constants.maximumPokemonId,
        (id) =>
            'Invalid pokemon id $id: the id muse be between ${Constants.minimumPokemonId} and ${Constants.maximumPokemonId + 1}!'));

TaskEither<String, Pokemon> fetchPokemon(int pokemonId) =>
    TaskEither.tryCatch(() async {
      final url = Uri.parse(Constants.requestAPIUrl(pokemonId));
      final response = await http.get(url);
      return Pokemon.fromJson(jsonDecode(response.body));
    }, (error, stackTrace) => 'Unknown error: $error');

TaskEither<String, Pokemon> fetchPokemonFromUserInput(String pokemonId) =>
    validateUserPokemonId(pokemonId).flatMapTask(fetchPokemon);
