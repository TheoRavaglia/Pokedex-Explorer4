import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon.dart';

class PokemonService {
  static const String baseUrl = 'https://pokeapi.co/api/v2';
  static const int limit = 20;

  Future<List<Pokemon>> getPokemonList(int offset) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/pokemon?limit=$limit&offset=$offset'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;
        
        final pokemonList = <Pokemon>[];
        
        for (var i = 0; i < results.length; i++) {
          try {
            final pokemon = Pokemon.fromListJson(results[i]);
            pokemonList.add(pokemon);
          } catch (e) {
            // Ignora Pokémon com erro e continua processando os outros
            continue;
          }
        }
        
        return pokemonList;
      } else {
        throw Exception('Falha ao carregar lista de Pokémon (HTTP ${response.statusCode})');
      }
    } catch (e) {
      throw Exception('Erro de conexão: $e');
    }
  }

  Future<Pokemon> getPokemonDetails(int id) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/pokemon/$id'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return Pokemon.fromJson(data);
      } else {
        throw Exception('Falha ao carregar detalhes do Pokémon');
      }
    } catch (e) {
      throw Exception('Erro de conexão: $e');
    }
  }

  Future<Pokemon?> searchPokemon(String query) async {
    try {
      // Primeiro tenta buscar por nome
      final response = await http.get(
        Uri.parse('$baseUrl/pokemon/${query.toLowerCase()}'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return Pokemon.fromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
} 