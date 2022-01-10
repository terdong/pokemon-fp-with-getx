import 'package:get/get.dart';
import 'package:pokemon_fp_with_gext/app/bindings/pokemon_binding.dart';
import 'package:pokemon_fp_with_gext/app/ui/pages/pokemonview_page/pokemon_page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      binding: PokemonBinding(),
      page: () => PokemonPage(),
    )
  ];
}
