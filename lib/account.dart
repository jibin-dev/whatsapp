import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Account'),elevation: 0,),
    body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.security),
              ),
              title: Text(
                "Security notifications",
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.money_outlined),
              ),
              title: Text(
                "Two-step verification",
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.login_outlined),
              ),
              title: Text(
                "Change number",
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.edit_document),
              ),
              title: Text(
                "Requst account info",
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.delete),
              ),
              title: Text(
                "Delete account",
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}