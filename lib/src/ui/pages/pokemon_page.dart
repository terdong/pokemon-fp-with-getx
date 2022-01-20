import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nil/nil.dart';
import 'package:pokemon_fp_with_gext/src/bloc/pokemon_bloc.dart';
import 'package:pokemon_fp_with_gext/src/data/models/pokemon.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<PokemonBloc>();
    //final cubit = context.read<FormBlocState>();
    //context.read<PokemonCubit>().fetchRandom();
    //return Container();
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokemonviewPage'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              /// [TextField] and [ElevatedButton] to input pokemon id to fetch
              TextFieldBlocBuilder(
                textFieldBloc: formBloc.pokemonId,
                suffixButton: SuffixButton.asyncValidating,
                // keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Insert pokemon id number',
                ),
              ),
              ElevatedButton(
                  onPressed: () => formBloc.submit(),
                  child: const Text('Get mypokemonId pokemon!')),
              SingleChildScrollView(
                child: FormBlocListener<PokemonBloc, Pokemon, String>(
                    onSubmitting: (context, state) {},
                    onSuccess: (context, state) {
                      context.go('/pokemon/${state.successResponse!.id}');
                    },
                    onFailure: (context, state) {},
                    child: BlocBuilder<PokemonBloc, FormBlocState>(
                        builder: (context, FormBlocState state) {
                      if (state is FormBlocLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
/*                       } else if (state is FormBlocSuccess) {
                        final pokemon = state.successResponse;
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
                        ); */
                      } else if (state is FormBlocFailure) {
                        return Text(state.failureResponse);
                      } else {
                        return nil;
                      }
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
