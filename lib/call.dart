import 'package:flutter/material.dart';

class call extends StatefulWidget {
  const call({super.key});

  @override
  State<call> createState() => _callState();
}

class _callState extends State<call> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
                return Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 300,top: 10),
                          child: Text('Recent',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        ListTile(
                          trailing: Icon(Icons.call),
                          title: Text('Adam John'),
                          subtitle: Text('Yesterday, 11:20pm'),
                          leading: Image.network('https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png'),
                        ),
                      ],
                    ));
              },itemCount: 1
              ),
                    
      ),
    );
  }
}