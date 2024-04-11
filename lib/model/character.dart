import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  int id;
  String name;
  String status;
  String species;
  String image;
  List<String> episode;
  String location;
  // Add more fields as needed

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.image,
    required this.episode,
    required this.location,
    // Add more fields as needed
  });
  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
