
import 'package:flutter/material.dart';
import 'package:messageapp/widget/chat_screen/file_dialog.dart';

import 'icon.dart';

class chat_input extends StatefulWidget {
  const chat_input({Key? key}) : super(key: key);

  @override
  State<chat_input> createState() => _chat_inputState();
}

class _chat_inputState extends State<chat_input> {
  TextEditingController message =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 7,
          child: Container(
            height: 50,
            padding: EdgeInsets.all(10),
            //margin: EdgeInsets.only(top: 10,bottom: 10),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30)
            ),

            child: TextField(
              controller: message,
              onChanged: (val){
                setState(() {

                });
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon_d(icon: Icons.insert_emoticon),
                  prefixIconColor: Colors.black54,
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                          onTap: ()=>File_dialog(context),
                          child: Icon_d(icon: Icons.attachment)),
                      Icon_d(icon: Icons.camera_alt_outlined),
                    ],
                  ),
                  suffixIconColor: Colors.black54,
                  hintText: "Type a message"
              ),

            ),
          ),
        ),
        Expanded(

          child: Container(
              height: 50,
              //width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue
              ),
              child: message.text.toString() ==""?InkWell(
                  onTap: (){
                    print(message.text=="");
                  },
                  child: Icon_d(icon:Icons.mic_rounded,)):InkWell(
                  onTap: (){
                  },
                  child: Icon_d(icon: Icons.send,))),
        )
      ],
    );
  }
}
