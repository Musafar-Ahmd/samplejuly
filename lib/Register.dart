import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent,
        title: const Text('Login',style: TextStyle(color:Colors.white,),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
              child: Text('Register Form',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.black))),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.contacts),
                    label: Text('First Name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),

          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.contacts),
                    label: Text('Last Name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),  Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.mail),
                    label: Text('E-mail'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
                obscuringCharacter:  "*",
                obscureText: true,
                decoration: InputDecoration(
                    label: Text('Password'),icon: Icon(Icons.password),
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),

          SizedBox(
            height: 20,
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              // color: Colors.orange,
              child: const Text("Register"),
            ),
          ),

        ],
    )
    );
  }
}
