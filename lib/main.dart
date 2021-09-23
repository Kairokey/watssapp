import 'package:flutter/material.dart';
import 'package:watsapp/View/ChatView.dart';
void main(){
  runApp(Watsapp());
}
class Watsapp extends StatefulWidget {
  @override
  _WatsappState createState() => _WatsappState();
}

class _WatsappState extends State<Watsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(

            actions: [
              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context)
              {

                    return[
                      PopupMenuItem(child: Text( 'New Group')),
                      PopupMenuItem(child: Text( 'New broadcast')),
                      PopupMenuItem(child: Text( 'WatsApp Web')),
                      PopupMenuItem(child: Text( 'Started Massage')),
                      PopupMenuItem(child: Text( 'Settings')),
                    ];
              }
              )
            ],
            backgroundColor: Colors.green,
            title: Text('WatsApp',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
            bottom: TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.amber,
              labelColor: Colors.white,

              tabs: [
                Icon(Icons.camera_alt_outlined),
                Text('Chats'),
                Text('Statues'),
                Text('Calls'),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(child: Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blue),)),
            ChatView(),
            Center(child: Text("Statues",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blue),)),
            Center(child: Text("Calls",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blue),)),

          ]),
        ),
      ),
    );
  }
}
