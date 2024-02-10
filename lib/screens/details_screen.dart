import 'package:flutter/material.dart';
import 'package:gridtask/models/details.dart';

class animeDetails extends StatelessWidget {
  final Anime anime;
  animeDetails({required this.anime});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          anime.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset(
                anime.imgURL,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              anime.title,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              anime.year,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                anime.describe,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ListTile(
//         leading: Image.asset(anime.imgURL),
//         title: Text(anime.title),
//         subtitle: Text(
//           anime.describe,
//           style: TextStyle(),
//         ),
//         trailing: Text(anime.year),
//       )