import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.help_center),
              ),
              title: Text(
                "Help center",
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.contact_page_sharp),
              ),
              title: Text(
                "Contact us",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text('Questians,need help'),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.file_copy),
              ),
              title: Text(
                "Terms and policysr",
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.info),
              ),
              title: Text(
                "App info",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
