import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final ExerciseName;
  final ExerciseCount;
  final color;

  const ExerciseTile({Key? key,
  required this.icon,
  required this.ExerciseName,
  required this.ExerciseCount,
  required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),

                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color:color,
                    child: Icon(icon,
                    color: Colors.white,),


                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      Text(ExerciseName,style: const TextStyle(fontWeight:FontWeight.w500),softWrap: true, maxLines: 2,overflow: TextOverflow.ellipsis),
                      //subtitle
                      Text(ExerciseCount.toString()+'',softWrap: true, maxLines: 2,overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),

              ],

            ),
            const Icon(Icons.more_horiz)
          ],

        ),
      ),
    );
  }
}
