import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/call.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/settings.dart';
import 'package:whatsapp/status.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: 
    Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
          actions: [
            IconButton(onPressed: () async{
              ImagePicker imagePicker=ImagePicker();
              await imagePicker.pickImage(source: ImageSource.camera);
            }, icon: Icon(Icons.camera_alt)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            PopupMenuButton(
              onSelected: (selecte)
              {
                if(selecte ==6){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const settings()
                  ),
                );
                
              }
              },
              // onSelected: (selected) {
              //   if (selected == 6) {
              //     Navigator.push()
              //   }
              // },
              elevation: 10,
              padding: EdgeInsets.symmetric(vertical: 20),
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: 1,
                    child: Text(
                      'New group',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 2,
                    child: Text(
                      'New broadcast',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 3,
                    child: Text(
                      'Linked divice',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 4,
                    child: Text(
                      'Starred message',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 5,
                    child: Text(
                      'Payments',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
                PopupMenuItem(
                    value: 6,
                    child: Text(
                      'Settings',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ))
              ],
            ),
          ],
          elevation: 0.8,
          shadowColor: Color(0xff075e55),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 50,
            width: 500,
            decoration: BoxDecoration(color: Color(0xff075e55)
            ),child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 1,
              labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              tabs: [
                
                Container(
                  width: 90,
                  child: Tab(
                    child: Row(children: [
                    Text('Chats'),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text('20',style: TextStyle(color: Color(0xff075e55)),),
                      ),
                    )
                    ],),
                  ),
                ),
                Container(
                  width: 85,
                  child: Tab(
                    child: Text('Staus'),
                  ),
                  
                ),Container(
                  width: 85,
                  child: Tab(
                    child: Text('Calls'),
                  ),
                )
              ]
              ),
          ),
          Flexible(
            flex: 1,
            child: TabBarView(children: [

              chat(),
              status(),
              call(),
            ]))
        ],
      ),
    ),
    );
  }
}
