import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  RecipeListItem(
    this.assetName,
    this.title,
  );

  String assetName;
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                assetName,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Made $title',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Have you ever made your own $title? Once youve tried a homemade $title, youll never go back,',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
