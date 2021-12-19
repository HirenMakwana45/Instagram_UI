import 'package:flutter/material.dart';

class UserReels extends StatelessWidget {
  const UserReels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              color: Colors.grey[500],
              child: Text('REELS'),
            ),
          ],
        ),
      ),
      body: Center(child: Text('REELS')),
    );
  }
}
