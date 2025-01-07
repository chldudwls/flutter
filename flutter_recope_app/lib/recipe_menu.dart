import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 2))),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildMenuIcon(Icons.food_bank, 'ALL', context), // context를 넘기지 않음
            SizedBox(width: 25),
            _buildMenuIcon(Icons.emoji_food_beverage, 'Coffee', context),
            SizedBox(width: 25),
            _buildMenuIcon(Icons.fastfood, 'Burger', context),
            SizedBox(width: 25),
            _buildMenuIcon(Icons.local_pizza, 'Pizza', context),
          ],
        ),
      ),
    );
  }

  // 메서드 만들어 보기
  // container 위젯을 꾸며 주고 싶다면 ...
  Widget _buildMenuIcon(IconData mIcon, String text, BuildContext context) {
    // Container 위젯에 color 속성과 decoration 함께 쓰면 무조건 오류
    return GestureDetector(
      onTap: () {
        _onMenuItemClick(context, text);
      },
      child: Container(
        width: 60,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(mIcon),
            SizedBox(height: 5),
            Text(text, style: TextStyle(color: Colors.black54)),
          ],
        ),
      ),
    );
  }

  void _onMenuItemClick(BuildContext context, String menuName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$menuName 메뉴가 클릭됨')),
    );
  }
}
