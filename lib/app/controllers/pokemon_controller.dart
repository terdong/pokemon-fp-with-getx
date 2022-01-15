import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:pokemon_fp_with_gext/app/data/constants.dart';
import 'package:pokemon_fp_with_gext/app/data/models/pokemon.dart';
import 'package:pokemon_fp_with_gext/app/data/provider/fetch_pokemon.dart';

class PokemonController extends GetNotifier<List<Pokemon>> {
  final pokemonIdController = TextEditingController();

  PokemonController() : super(List.empty());

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration.zero, () => fetchRandom());
  }

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
  Future<Unit> fetch() async => _pokemonRequest(
        () => fetchPokemonFromUserInput(pokemonIdController.text),
      );

  Future<Unit> _pokemonRequest(
      TaskEither<String, Pokemon> Function() requset) async {
    change(null, status: RxStatus.loading());
    final pokemon = requset();
    (await pokemon.run()).match(
        (error) => change(null, status: RxStatus.error(error)),
        (pokemon) => change([pokemon], status: RxStatus.success()));
    return unit;
  }
}
