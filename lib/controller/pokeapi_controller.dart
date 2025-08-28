import 'package:dio/dio.dart';
import 'package:pokedex/model/pokemon_list.dart';

class PokeapiController {
  static final dio = Dio();
  static Future<PokemonList?> getPokemonList([int? offset]) async {
    final response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon?offset=${offset ?? 0}&limit=10',
    );
    return PokemonList.fromJson(response.data);
  }
}
