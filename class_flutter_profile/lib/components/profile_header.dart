import 'package:flutter/material.dart';
import 'package:class_flutter_profile/theme.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        SizedBox(
          width: 100,
          height: 100,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '홍길동',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '프로그래머/작가',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '데어 플로그래밍',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        )
      ],
    );
  }
}
