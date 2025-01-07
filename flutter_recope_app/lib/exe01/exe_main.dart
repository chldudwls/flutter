import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PatuaOne'),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildRecipeAppBar(),
      body: Column(
        children: [],
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black54),
      elevation: 3.0,
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black54,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.airplane,
          color: Colors.black54,
        ),
      ],
    );
  }
}
