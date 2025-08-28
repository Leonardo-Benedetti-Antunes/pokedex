class PokemonList {
  int? count;
  String? next;
  String? previous;
  List<PokemonItem> pokemonItem;

  PokemonList({
    required this.count,
    required this.next,
    required this.previous,
    required this.pokemonItem,
  });

  factory PokemonList.fromJson(Map<String, dynamic> json) => PokemonList(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    pokemonItem: List<PokemonItem>.from(
      json["pokemonItem"].map((x) => PokemonItem.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "pokemonItem": List<dynamic>.from(pokemonItem.map((x) => x.toJson())),
  };
}

class PokemonItem {
  String? name;
  String? url;

  PokemonItem({required this.name, required this.url});

  factory PokemonItem.fromJson(Map<String, dynamic> json) =>
      PokemonItem(name: json["name"], url: json["url"]);

  Map<String, dynamic> toJson() => {"name": name, "url": url};
}
