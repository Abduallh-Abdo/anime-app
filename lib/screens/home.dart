import 'package:flutter/material.dart';
import 'package:gridtask/components/category.dart';
import 'package:gridtask/models/details.dart';
import 'package:gridtask/screens/details_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.teal,
        title: const Text(
          'Grid view',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: 12,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            Anime anime = animeList[index];
            return Category(
              pic: anime.imgURL,
              name: anime.title,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => animeDetails(
                      anime: anime,
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}

// GridView.count(
//         padding: EdgeInsets.all(10),
//         mainAxisSpacing: 20,
//         crossAxisSpacing: 20,
//         crossAxisCount: 2,
//         children: [
//           Category(
//               pic: 'images/Shingeki_no_Kyojin.jpg', name: anime.title),
//           Category(
//               pic: 'images/My_Hero_Academia.jpg', name: 'My Hero Academia'),
//           Category(pic: 'images/Demon_Slayer.jpg', name: 'Demon Slayer'),
//           Category(pic: 'images/Naruto.jpg', name: 'Naruto'),
//           Category(pic: 'images/steins_gate.jpg', name: 'steins_gate'),
//           Category(pic: 'images/ergo_proxy.jpg', name: 'ergo_proxy'),
//           Category(pic: 'images/Jujutsu_Kaisen.jpg', name: 'Jujutsu Kaisen'),
//           Category(pic: 'images/Blue_Lock.jpg', name: 'Blue Lock'),
//           Category(pic: 'images/haikyuu.jpg', name: 'haikyuu'),
//           Category(pic: 'images/Death_Note.jpg', name: 'Death Note'),
//           Category(pic: 'images/Hunter_x_Hunter.jpg', name: 'Hunter x Hunter'),
//           Category(pic: 'images/Boruto.jpg', name: 'Boruto'),
//         ],
//       ),