import 'package:flutter/material.dart';
import 'package:test_technique/model/character.dart';

class ProfilePage extends StatelessWidget {
  final Character character;

  const ProfilePage({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Image.network(
                character.image,
                width: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              character.name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Location:',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                Text(
                  character.location,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Status:',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                Text(
                  character.status,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            character.episode.length == 1
                ? Text(
                    'Participated in ${character.episode.length} episode',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  )
                : Text(
                    'Participated in ${character.episode.length} episodes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
          ],
        ),
      ),
    );
  }
}
