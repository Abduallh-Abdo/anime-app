import 'package:flutter/material.dart';
import 'package:gridtask/models/details.dart';
import 'package:gridtask/screens/details_screen.dart';

class Category extends StatelessWidget {
  Category({this.onTap, required this.pic, required this.name});
  Function()? onTap;
  String pic, name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: AssetImage(pic),
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 1,
              left: 5,
              child: Text(
                name,
                maxLines: 3,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
