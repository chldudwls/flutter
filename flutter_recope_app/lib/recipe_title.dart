import 'package:flutter/material.dart';

// 레시피 타이틀 클래스(위젯) 만들어 보자.
class RecipeTitle extends StatelessWidget {
  const RecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: Text('Recipes', style: TextStyle(fontSize: 30)),
    );
  }
}
