
import 'package:get/get.dart';
import '../controllers/pokemon_controller.dart';


class PokemonBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PokemonController>(() => PokemonController());
  }
}