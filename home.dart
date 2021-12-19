import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intsagram_ui/util/stories.dart';
import 'package:intsagram_ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Hiren',
    'Vishal',
    'Rahul',
    'Akash',
    'Jyoti',
    'Nirmal',
    'Jay',
    'Viren'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Instagram',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'Neue Helvetica')),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          )),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return StoryInsta(text: people[index]);
                }),
          ),

          //POSTS
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
