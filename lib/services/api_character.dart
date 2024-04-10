import 'package:dio/dio.dart';
import 'package:test_technique/model/character.dart';

class ApiCharacter {
  final dio = Dio();

  Future<List<Character>> getCharacters() async {
    final response = await dio.get('https://rickandmortyapi.com/api/character');

    // Assuming response.data['results'] is a JSON array containing character objects
    List<dynamic> jsonData = response.data['results'];

    // Map each JSON object to a Character object using Character.fromJson
    List<Character> characters =
        jsonData.map((json) => Character.fromJson(json)).toList();

    return characters;
  }
}
