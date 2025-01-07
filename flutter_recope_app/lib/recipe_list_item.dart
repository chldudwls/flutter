import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;
  // 하드 코딩
  const RecipeListItem(this.imageName, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/${imageName}.jpeg',
                  fit: BoxFit.cover),
            ),
          ),
          // 텍스트1
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 20)),
          Text('have you erver.............'),
          // 텍스트2
        ],
      ),
    );
  }
}
