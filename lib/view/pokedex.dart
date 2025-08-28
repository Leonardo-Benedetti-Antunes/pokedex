import 'package:flutter/material.dart';
import 'package:pokedex/controller/pokeapi_controller.dart';
import 'package:pokedex/model/pokemon_list.dart';

class PokedexView extends StatefulWidget {
  PokedexView({super.key});

  @override
  State<PokedexView> createState() => _PokedexViewState();
}

class _PokedexViewState extends State<PokedexView> {
  PokemonList? list;

  @override
  void initState() {
    super.initState();
    getPokemonList();
  }

  getPokemonList() async {
    setState(() async {
      list = await PokeapiController.getPokemonList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pokedex")),
      body: Center(
        child: Column(
          children: [
            // SearchBar(),
            ListView.builder(
              itemCount: list?.pokemonItem.length,
              itemBuilder: (context, index) {
                return Card(child: Text(list?.pokemonItem[index].name ?? ""));
              },
            ),
          ],
        ),
      ),
    );
  }
}
