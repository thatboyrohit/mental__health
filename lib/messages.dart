import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List messages;

  const MessagesScreen({Key? key ,required this.messages}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
   final w = MediaQuery.of(context).size.width;
    return ListView.separated(itemBuilder:(context , index){
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: widget.messages[index]['isUserMessage']?MainAxisAlignment.end:MainAxisAlignment.start,
     mainAxisSize: MainAxisSize.min ,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 14 , horizontal: 14),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(
                    widget.messages[index]['isUserMessage'] ? 0: 20
                  ),
                  topLeft: Radius.circular(
                      widget.messages[index]['isUserMessage'] ? 20: 0
                  ),

                ),
                color: widget.messages[index]['isUserMessage']
                  ? Colors.grey.shade800
                    : Colors.grey.shade900.withOpacity(0.8)
              ),
              constraints:  BoxConstraints(maxWidth: w *2/3),
              child: Text(widget.messages[index]['message'].text.text[0])
            )
          ],
        ),
      );
}, separatorBuilder: (_ , i)=> Padding(padding: EdgeInsets.only(top: 10)),
        itemCount: widget.messages.length);
  }
}



//
// addMessage(Message message, [bool isUserMessage = false]) async {
//   messages.add({
//     'message': message,
//     'isUserMessage': isUserMessage,
//   });
//   final text = message.text?.text?.isNotEmpty == true ? message.text!.text![0] : '';
//   if (text.isNotEmpty) {
//     DetectIntentResponse response = await dialogFlowwter.detectIntent(
//       queryInput: QueryInput(
//         text: TextInput(text: text),
//       ),
//     );
//     if (response.message == null) return;
//     setState(() {
//       addMessage(response.message!);
//     });
//   }
// }