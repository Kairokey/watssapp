import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomListTitle extends StatelessWidget {
 String? title;
 String? suptitle;
 String?  Traling;
 bool? group;
 CustomListTitle({this.title ,this.suptitle,this.Traling,this.group});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading:CircleAvatar(

          backgroundColor: Colors.grey[300],radius: 30,
          child:
          group!?
           SvgPicture.asset('images/groups_black_24dp.svg')
              : SvgPicture.asset('images/person_black_24dp.svg')
        ) ,
        title:Text(title!) ,
        subtitle:Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.done_all,color: Colors.blueAccent),
            ),
            Text(suptitle!),
          ],
        ) ,
        trailing:Text(Traling!) ,
      ),
    );
  }
}
