import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
       child: ListView.builder(itemBuilder: (BuildContext context, int index) {
                return Container(
                    color: Colors.white,
                    child: ListTile(
                      trailing: Text('Yesterday'),
                      title: Text('Adam John'),
                      subtitle: Text('Hi...good morning...'),
                      leading: Image.asset("image/profile10.png"),
                    ));
              },itemCount: 8,
              ),
      ),
    );
  }
}
