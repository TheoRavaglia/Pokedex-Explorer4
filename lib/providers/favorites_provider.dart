import 'package:flutter/foundation.dart';
import '../models/pokemon.dart';

class FavoritesProvider extends ChangeNotifier {
  final Set<int> _favoriteIds = {};
  final Map<int, Pokemon> _favoritePokemon = {};
  List<Pokemon> get favoritesList => _favoritePokemon.values.toList();

  bool isFavorite(int pokemonId) {
    return _favoriteIds.contains(pokemonId);
  }

  void toggleFavorite(Pokemon pokemon) {
    if (_favoriteIds.contains(pokemon.id)) {
      _favoriteIds.remove(pokemon.id);
      _favoritePokemon.remove(pokemon.id);
    } else {
      _favoriteIds.add(pokemon.id);
      _favoritePokemon[pokemon.id] = pokemon;
    }
    notifyListeners();
  }

  void clearFavorites() {
    _favoriteIds.clear();
    _favoritePokemon.clear();
    notifyListeners();
  }
} 