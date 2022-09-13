import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Homepage'),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      'Shanil',
                      style: TextStyle(color: Colors.black, fontSize: 23),
                    ),
                    subtitle: Text('Good morning',style: TextStyle(color: Colors.grey,fontSize: 13),),
                    leading: CircleAvatar(backgroundImage: NetworkImage('https://www.filmibeat.com/img/popcorn/profile_photos/mammootty-20150909105845-2447.jpg'),),
                    trailing: Text('1${index}:00P'),),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 10)),
    );
  }
}