import 'package:flutter/material.dart';
import 'package:intsagram_ui/util/stories.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),

                  //number of followers ,post

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '237',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '1452',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '247',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Name and Bio

            Padding(
              padding: const EdgeInsets.only(right: 180, top: 20.0, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      'i create ui of instagram',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    '.com.youtube/3425.com',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        child: Container(
                          child: Center(child: Text('Edit Profile')),
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        child: Container(
                          child: Center(child: Text('Ad Tools')),
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        child: Container(
                          child: Center(child: Text('Insights')),
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  StoryInsta(text: 'Vlog'),
                  StoryInsta(text: 'Food'),
                  StoryInsta(text: 'Shayri'),
                  StoryInsta(text: 'Songs'),
                ],
              ),
            ),

            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
