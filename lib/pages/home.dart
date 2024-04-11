import 'package:flutter/material.dart';
import 'package:test_technique/components/character_card.dart';
import 'package:test_technique/model/character.dart';
import 'package:test_technique/services/api_character.dart';
import 'package:test_technique/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Character> characters = [];

  @override
  void initState() {
    super.initState();
    getDataCharacter();
  }

  Future<void> getDataCharacter() async {
    List<Character> chars = await ApiCharacter().getCharacters();
    setState(() {
      characters = chars;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: characters.length,
          itemBuilder: (context, index) {
            return CharacterCard(
              fullname: characters[index].name,
              status: characters[index].status,
              species: characters[index].species,
              imageUrl: characters[index].image,
              episodes: characters[index].episode,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProfilePage(character: characters[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
