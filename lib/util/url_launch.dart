import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mental_health/util/Exercise_tile.dart';





class url extends StatefulWidget {
  const url({Key? key}) : super(key: key);

  @override
  State<url> createState() => _urlState();
}

class _urlState extends State<url> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:(
          Expanded(
            child: ListView(
              children: [
                ElevatedButton(
                  onPressed: () {
                    const url = 'https://www.happify.com/hd/8-mindfulness-exercises-that-will-calm-you-down-instantly/';
                   launchUrl;
                    },
                  child: ExerciseTile(
                    icon: Icons.favorite,
                    ExerciseName: 'Exercise skills',
                    ExerciseCount: 16,
                    color: Colors.orange,
                  ),
                ),
                ExerciseTile(  icon: Icons.person,
                  ExerciseName: 'Reading skills',
                  ExerciseCount: 16,
                  color: Colors.blue,),
                ExerciseTile(  icon: Icons.star,
                  ExerciseName: 'Writing skills',
                  ExerciseCount: 16,
                  color: Colors.pink,),

              ],
            ),
          )
      )
    );
  }
}
