import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String fullname;
  final String status;
  final String species;
  final String imageUrl;
  final List<String> episodes;
  final VoidCallback? onTap;

  const CharacterCard(
      {super.key,
      required this.fullname,
      required this.status,
      required this.species,
      required this.imageUrl,
      required this.episodes,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color statusColor(String status) {
      if (status == 'Alive') {
        return Colors.lightGreen;
      } else if (status == 'Dead') {
        return Colors.red;
      } else
        return Colors.transparent;
    }

    Color color = statusColor(status);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        margin: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Card(
          color: color,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                title: Text(
                  fullname,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('$status || ${episodes.length}'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(species),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
