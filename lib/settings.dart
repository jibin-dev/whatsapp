import 'package:flutter/material.dart';
import 'package:whatsapp/account.dart';
import 'package:whatsapp/help.dart';
import 'package:whatsapp/notification.dart';
import 'package:whatsapp/privacy.dart';
import 'package:whatsapp/storage.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}
List<String> language = [
  'English',
  'Malayalam',
  'Hindi',
  'Kannada',
  'Tamil',
  'Telengu'
];
class _settingsState extends State<settings> {
  String _currentLanguage = language[0];
  Future _displaaybpttomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        height: 300,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                RadioListTile(
                  title: Text('English'),
                  value: language[0],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Malayalam'),
                  value: language[1],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Hindi'),
                  value: language[2],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Kannada'),
                  value: language[3],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Tamil'),
                  value: language[4],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Thelungu'),
                  value: language[5],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Settings')
    ,),
    body: Stack(children: [
      Container(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
              return Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      ListTile(
                        trailing: Icon(Icons.qr_code,color: Color(0xff075e55),size: 30,),
                        title: Text('Martin'),
                        subtitle: Text('If it dosn\'t challenge you it won\'t ..'),
                        leading: Image.asset('image/profile10.png'),
                      ),SizedBox(height: 10,),
                      ListTile(onTap: () {
                         Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const account()
                  ),
                );
                      },
                        title: Text('Account'),
                        subtitle: Text('Security notifications,change number'),
                        leading: Icon(Icons.key),
                      ),
                      ListTile(onTap: () {
                         Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const privacy()
                  ),
                );
                      },
                        title: Text('Privacy'),
                        subtitle: Text('Block contacts,dissapearing messages'),
                        leading: Icon(Icons.lock),
                      ),
                      ListTile(
                        title: Text('Avatar'),
                        subtitle: Text('Create,edit,profile photo'),
                        leading: Icon(Icons.add_reaction),
                      ),
                      ListTile(
                        title: Text('Chats'),
                        subtitle: Text('Theme,wallpapers,chat history'),
                        leading: Icon(Icons.chat),
                      ),
                      ListTile(onTap: () {
                         Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  notification()
                  ),
                );
                      },
                        title: Text('Notifications'),
                        subtitle: Text('Message,group & call tones'),
                        leading: Icon(Icons.notifications),
                      ),
                      ListTile(onTap: () {
                         Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  storage()
                  ),
                );
                      },
                        title: Text('Storage and data'),
                        subtitle: Text('Network usage,auto-download'),
                        leading: Icon(Icons.data_saver_off_sharp ),
                      ),
                      ListTile(onTap: () {
                _displaaybpttomSheet(context);
              },
                        title: Text('App language'),
                        subtitle: Text('English(divice\'s language)'),
                        leading: Icon(Icons.g_translate_sharp ),
                      ),
                      ListTile(onTap: () {
                         Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const help()
                  ),
                );
                      },
                        title: Text('Help'),
                        subtitle: Text('Help center,contact us,privacy policy'),
                        leading: Icon(Icons.help ),
                      ),
                      ListTile(
                        title: Text('Invite a friend'),

                        leading: Icon(Icons.people ),
                      ),
                      
                      
                    ],
                  ),
                  );
            },itemCount: 1,
            ),
            
      ),
    ],),);
  }
}