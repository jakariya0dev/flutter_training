import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
   ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double opc = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  if(opc<=1){
                    opc += 0.1;
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.all(24),
                child: Opacity(
                  opacity: opc,
                  child: Image.network('https://images.pexels.com/photos/8265680/pexels-photo-8265680.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                )
              ),
            ),
          GestureDetector(
            onTap: (){
              print('Text Clicked');
                },
                child: Text('Profile Page', style: TextStyle(fontSize: 22, color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
