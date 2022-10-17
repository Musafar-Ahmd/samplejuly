
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:samplejuly/UI1/UISignup.dart';


class UILoginScreen extends StatelessWidget {
  const UILoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 25,right: 25,bottom: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: const [
                      Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Login to your account",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text('Email',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Password',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder()
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Center(child: Text('Login',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont have an account?',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UISignup()));
                    }, child: const Text('Sign up',style: TextStyle(color: Colors.blue,fontSize: 15),))
                  ],),
                Container(
                    height:300 ,
                    width: 300,
                    child: Image.network('data:image/png;base64,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'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}