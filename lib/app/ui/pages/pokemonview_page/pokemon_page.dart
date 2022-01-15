import 'package:flutter/material.dart';
import 'package:gcl_for_flutter/gcl.dart';
import 'package:get/get.dart';
import 'package:pokemon_fp_with_gext/app/controllers/pokemon_controller.dart';
import 'package:pokemon_fp_with_gext/app/data/models/pokemon.dart';

class PokemonPage extends GetView<PokemonController> with LoggerProvider {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('PokemonviewPage'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                /// [TextField] and [ElevatedButton] to input pokemon id to fetch
                TextField(
                  controller: controller.pokemonIdController,
                  decoration: const InputDecoration(
                    hintText: 'Insert pokemon id number',
                  ),
                ),
                ElevatedButton(
                    onPressed: () => controller.fetch(),
                    child: const Text('Get mypokemonId pokemon!')),
                controller.obx(
                    (stateList) => ListView.builder(
                        shrinkWrap: true,
                        itemCount: stateList!.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Pokemon pokemon = stateList[index];
                          return Card(
                            child: Column(
                              children: [
                                Image.network(
                                  pokemon.sprites.frontDefault,
                                  width: 200,
                                  height: 200,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 24,
                                  ),
                                  child: Text(
                                    pokemon.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                    onLoading: const Center(
                      child: CircularProgressIndicator(),
                    ),
                    onEmpty: const Center(
                      child: Text('No pokemon found'),
                    ),
                    onError: (error) => Text(error ?? 'Error'))
              ],
            ),
          ),
        ),
      );
}
