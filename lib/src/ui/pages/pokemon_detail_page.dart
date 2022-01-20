import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:nil/nil.dart';
import 'package:pokemon_fp_with_gext/src/bloc/pokemon_bloc.dart';
import 'package:pokemon_fp_with_gext/src/data/models/pokemon.dart';

part 'pokemon_detail_page.g.dart';

@swidget
Widget pokemonCard(BuildContext context) {
  return BlocBuilder<PokemonBloc, FormBlocState>(
      builder: (context, FormBlocState state) {
    if (state is FormBlocSuccess) {
      final Pokemon pokemon = state.successResponse;
      return Scaffold(
        appBar: AppBar(title: Text(pokemon.name)),
        body: Center(
          child: Card(
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
          ),
        ),
      );
    } else {
      return nil;
    }
  });
}
