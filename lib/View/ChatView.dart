import 'package:flutter/material.dart';
import 'package:watsapp/Widget/CustomListTite.dart';
class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
 List Data=['Data1','Data2'];
 List sub=['sure','no iam biusy'];
 List tra=['6:25','4:25'];
List chats=[true,false];
 @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.length,
        itemBuilder: (context,index){
      return CustomListTitle(title: Data[index],suptitle: sub[index],Traling: tra[index],group: chats[index],);
    });
  }
}
