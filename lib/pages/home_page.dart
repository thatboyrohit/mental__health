

import 'package:flutter/material.dart';
import 'package:mental_health/chat_bot.dart';
import 'package:mental_health/util/Exercise_tile.dart';
import 'package:mental_health/util/emotion_face.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.blue.shade800,
      resizeToAvoidBottomInset: false, // set it to false


      body: SafeArea(
        child: Column(children: [
               //greetings row
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                //Hi User!!! hello
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hey Rohit!',style: TextStyle(color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),),
                    Text(' ',style: TextStyle(color: Colors.blue.shade200),),
                  ],
                ),


                //notification
                Container(

                  decoration: BoxDecoration(
                    color: Colors.blue.shade600,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: InkWell(
                    child: Icon(Icons.notifications,
                    color: Colors.white,),
                    onTap: (){
                     showDialog(context: context, builder: (context)=>AlertDialog(
                       content: Text('No new notifications!!!'),
                       actions: [
                        // TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Back')),
                         TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Ok'))
                       ],
                     )
                     );
                    },
                  ),
                )

              ],),
              SizedBox(height: 25,),
              //search box



           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context){
               return Home();
             } ,));
           },
               child: Text('Interact with AI Bot')),
              //How do you feel
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('How do you feel?',style: TextStyle(color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),),
                  Icon(Icons.more_horiz,color: Colors.white,)
                ],
              ),
              SizedBox(height: 25,),
                 //4 different faces
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                     //bad
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            showDialog(context: context,
                                builder: (context)=>AlertDialog(
                                  content: Text('I am sorry to hear that you are feeling depressed today. \n'
                                      'Reach out to someone: Talk to a trusted friend, family member, or someone you feel comfortable with about how you are feeling. Sharing your emotions can provide support and perspective.'),
                                  actions: [
                                    TextButton(onPressed: ()=> Navigator.pop(context), child: Text('')),
                                    TextButton(onPressed: ()=> Navigator.pop(context), child: Text('ok'))
                                  ],
                                )
                            );
                          }, child: Container(

                            child: EmotionFace(emotionFace: '😌',)),

                        ),
                        SizedBox(height: 8,),
                        Text('bad',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                     //fine
                     Column(
                       children: [
                         ElevatedButton(
                           onPressed: () {

                             showDialog(context: context,
                                 builder: (context)=>AlertDialog(
                                   content: Text('Your Mood Can be enhanced more Dear, Do checkout our Exercises or You can take consultant from our mental AI'),
                                   actions: [
                                     //TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Still sad')),
                                     TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Ok'))
                                   ],
                                 )
                             );
                           }, child: Container(

                             child: EmotionFace(emotionFace: '🙂',)),

                         ),
                         SizedBox(height: 8,),
                         Text('Fine',style: TextStyle(color: Colors.white),)
                       ],
                     ),
                     //well
                     Column(
                       children: [
                         ElevatedButton(
                           onPressed: () {

                             showDialog(context: context,
                                 builder: (context)=>AlertDialog(
                                   content: Text('If youre feeling well and looking for things to do, here are a few suggestions: \n '
                                       'Engage in a hobby: Spend time doing something you enjoy, such as reading, painting, playing a musical instrument, or practicing a sport. \n'
                                       'Go for a walk or exercise: Take advantage of your good mood by going for a walk, jog, or engaging in any form of physical activity. It can help boost your energy levels and overall well-being. \n'
                                       'Connect with loved ones: Reach out to friends or family members and plan a get-together, whether it is meeting in person, having a video call, or even sending a thoughtful message to check on them.'),
                                   actions: [

                                     TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Ok'))
                                   ],
                                 )
                             );
                           }, child: Container(

                             child: EmotionFace(emotionFace: '😀',)),

                         ),
                         SizedBox(height: 8,),
                         Text('Well',style: TextStyle(color: Colors.white),)
                       ],
                     ),
                     //excited
                     Column(
                       children: [
                         ElevatedButton(
                           onPressed: () {
                             showDialog(context: context,
                                 builder: (context)=>AlertDialog(
                                   content: Text('If youre feeling well and looking for things to do, here are a few suggestions: \n '
                                       'Engage in a hobby: Spend time doing something you enjoy, such as reading, painting, playing a musical instrument, or practicing a sport. \n'
                                       'Go for a walk or exercise: Take advantage of your good mood by going for a walk, jog, or engaging in any form of physical activity. It can help boost your energy levels and overall well-being. \n'
                                       'Connect with loved ones: Reach out to friends or family members and plan a get-together, whether it is meeting in person, having a video call, or even sending a thoughtful message to check on them.'),
                                   actions: [

                                     TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Ok'))
                                   ],
                                 )
                             );
                           }, child: Container(

                             child: EmotionFace(emotionFace: '🥳',)),

                         ),
                         SizedBox(height: 8,),
                         Text('Excellent',style: TextStyle(color: Colors.white),)
                       ],
                     ),
                   ],),
            ],
          ),
          SizedBox(height: 25,),
          Expanded(

            child: Container(
padding: EdgeInsets.all(25),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30) ,topRight: Radius.circular(30) ),
                color: Colors.grey.shade300,

              ),
              child: Center(

                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Expanded(child: Text('Exercises',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),softWrap: false, maxLines: 2,overflow: TextOverflow.ellipsis,)),
                        Icon(Icons.more_horiz)
                      ],
                    ),

                    SizedBox(height: 20,),
                    // ListView of Exercises
                   Expanded(

                        child: ListView(


                          children: [



                                    GestureDetector(
                                      onTap:(){
                                        launchUrl(Uri.parse('https://www.youtube.com/watch?v=1YxHlJyjQWM&list=PLjVLYmrlmjGfGLShoW0vVX_tcyT8u1Y3E&index=66'));
                                      },
                                      child: ExerciseTile(
                                        icon: Icons.favorite,
                                        ExerciseName: 'Exercise skills',
                                        ExerciseCount: 'Health, energy, well-being.',
                                        color: Colors.orange,

                                      ),
                                    ),
                     GestureDetector(
                       onTap: (){
                         launchUrl(Uri.parse('https://www.youtube.com/watch?v=1YxHlJyjQWM&list=PLjVLYmrlmjGfGLShoW0vVX_tcyT8u1Y3E&index=66'));
                       },
                       child: ExerciseTile(
                         icon: Icons.menu_book_outlined,
                         ExerciseName: 'Reading skills',
                         ExerciseCount: 'Knowledge, growth.',
                         color: Colors.blue,
                       ),
                     ),
                     GestureDetector(
                       onTap: (){
                         launchUrl(Uri.parse('https://www.youtube.com/watch?v=1YxHlJyjQWM&list=PLjVLYmrlmjGfGLShoW0vVX_tcyT8u1Y3E&index=66'));
                       },
                       child: ExerciseTile(
                         icon: Icons.star,
                         ExerciseName: 'Writing skills',
                         ExerciseCount:'Expression, clarity.',
                         color: Colors.pink,
                       ),
                     ),
                     GestureDetector(
                       onTap: (){
                         launchUrl(Uri.parse('https://www.youtube.com/watch?v=1YxHlJyjQWM&list=PLjVLYmrlmjGfGLShoW0vVX_tcyT8u1Y3E&index=66'));
                       },
                       child: ExerciseTile(
                         icon: Icons.local_movies_outlined,
                         ExerciseName: 'Entertainment',
                         ExerciseCount: 'Escape, inspiration.',
                         color: Colors.red,
                       ),
                     ),
                     GestureDetector(
                       onTap: (){
                         launchUrl(Uri.parse('https://www.youtube.com/watch?v=1YxHlJyjQWM&list=PLjVLYmrlmjGfGLShoW0vVX_tcyT8u1Y3E&index=66'));
                       },
                       child: ExerciseTile(
                         icon: Icons.podcasts,
                         ExerciseName: 'Podcasts',
                         ExerciseCount: 'Informative, engaging.',
                         color: Colors.brown,
                       ),
                     ),
                                 ] )




                        ),




                  ],
                ),
              ),


            ),
          ),
       
        ],),
      ),

    );
  }




}
