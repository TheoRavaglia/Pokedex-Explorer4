class Pokemon {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final List<String> abilities;
  final int height;
  final int weight;
  final int baseExperience;

  Pokemon({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.abilities,
    required this.height,
    required this.weight,
    required this.baseExperience,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      imageUrl: json['sprites']['front_default'] ?? '',
      types: (json['types'] as List)
          .map((type) => type['type']['name'] as String)
          .toList(),
      abilities: (json['abilities'] as List)
          .map((ability) => ability['ability']['name'] as String)
          .toList(),
      height: json['height'] ?? 0,
      weight: json['weight'] ?? 0,
      baseExperience: json['base_experience'] ?? 0,
    );
  }

  factory Pokemon.fromListJson(Map<String, dynamic> json) {
    try {
      final url = json['url'] as String;
      final urlParts = url.split('/');
      // Filtra apenas os segmentos não vazios e pega o último
      final nonEmptyParts = urlParts.where((segment) => segment.isNotEmpty).toList();
      final idString = nonEmptyParts.last;
      final id = int.parse(idString);
      
      return Pokemon(
        id: id,
        name: json['name'] as String,
        imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png',
        types: [],
        abilities: [],
        height: 0,
        weight: 0,
        baseExperience: 0,
      );
    } catch (e) {
      rethrow;
    }
  }
} 