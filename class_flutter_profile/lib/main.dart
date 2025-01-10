import 'package:class_flutter_profile/components/profile_buttons.dart';
import 'package:class_flutter_profile/components/profile_count_info.dart';
import 'package:class_flutter_profile/components/profile_header.dart';
import 'package:class_flutter_profile/components/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:class_flutter_profile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
      //theme: theme(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('profile'),
      ),
      endDrawer: Container(
        width: 200,
        // double.infinity <-- 가능한 최대로 확장 하라
        color: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ProfileHeader(),
          const SizedBox(height: 20),
          ProfileCountInfo(),
          const SizedBox(height: 20),
          ProfileButtons(),
          const SizedBox(height: 20),
          Expanded(child: ProfileTab()),
        ],
      ),
    ));
  }
}
