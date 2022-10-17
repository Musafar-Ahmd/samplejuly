
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:samplejuly/UI1/welcome.dart';

class UISignup extends StatelessWidget {
  const UISignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 25,right: 25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: const [
                      Text(
                        'Sign up',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Create an account. It's free",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Username',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 10,),
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
                    SizedBox(height: 10,),
                    Text('Confirm Password',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder()
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> UIwelcome()));
                  } ,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),

                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(child: Text('Sign Up',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: const Text('Login',style: TextStyle(color: Colors.blue,fontSize: 15),))
                  ],)
              ]),
        ),
      ),
    );
  }
}