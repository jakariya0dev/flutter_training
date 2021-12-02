import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('WARNING'),
                          content: Text('are you want to exit the app'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                SystemNavigator.pop();
                                exit(0);
                              },
                              child: Text('ok'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.green,
                child: Text(
                  'Cupertino Dialog',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('WARNING'),
                          content: Text('are you want to exit the app'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                SystemNavigator.pop();
                                exit(0);
                              },
                              child: Text('ok'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.green,
                child: Text(
                  'Alert Dialog',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: Colors.orange,
                  onPressed: () {
                  showDialog(context: context, builder: (context){
                    return SimpleDialog(

                      title: Text('Seletct One'),
                      children: [
                        ListTile(
                        onTap: (){
                      print('Silvia');
                      Navigator.pop(context);
                    },
                          leading: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/6031664/pexels-photo-6031664.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),),
                          title: Text('Dr. Silvia '),

                        ),
                        ListTile(
                          leading: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/2095910/pexels-photo-2095910.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),),
                          title: Text('Dr. Rose '),
                          onTap: (){
                    print('Rose');
                    }

                        ),
                      ],
                    );
                  });
                  },
                  child: Text(
                    'Simple Dialog',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Colors.orange,
                  onPressed: () {
                    showDialog(context: context, builder: (context){
                      return AboutDialog(

                      );
                    });
                  },
                  child: Text(
                    'About Dialog',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Colors.orange,
                  onPressed: () {
                    showDialog(context: context, builder: (context){
                      return DatePickerDialog(
                          firstDate: DateTime(2010),
                        lastDate: DateTime(2022),
                        initialDate: DateTime.now(),

                      );
                    });
                  },
                  child: Text(
                    'Date Dialog',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
