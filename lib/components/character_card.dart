import 'package:flutter/material.dart';

class CharacterCard extends StatefulWidget {
  final String fullname;
  final String status;
  final String species;
  final String imageUrl;
  const CharacterCard(
      {super.key,
      required this.fullname,
      required this.status,
      required this.species,
      required this.imageUrl});

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(20)),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(widget.imageUrl)),
              title: Text(
                widget.fullname,
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('${widget.status} || ${widget.species}'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(widget.species),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
