import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class status extends StatefulWidget {
  const status({super.key});

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('My status'),
                          subtitle: Text('Tap to add status update'),
                          trailing: Text(''), 
                          leading: Image.network('https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 280),
                          child: Text('Viewed updates'),
                          
                        ),ListTile(
                          title: Text('Adam John'),
                          subtitle: Text('30 minutes ago'),
                          trailing: Text(''), 
                          leading: Image.network('https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 420,left: 300),
                          child: Column(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                              SizedBox(height: 20,),
                              IconButton(onPressed: () async{
                                          ImagePicker imagePicker=ImagePicker();
                                          await imagePicker.pickImage(source: ImageSource.camera);
                                        }, icon: Icon(Icons.camera_alt,size: 35,)
                                        ),
                            ],
                          ),
                                    
                        ),
            
                      ],
                    ),
      ),
      
    );
  }
}