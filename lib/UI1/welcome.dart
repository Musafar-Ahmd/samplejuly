import 'package:samplejuly/UI1/UILogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:samplejuly/UI1/UISignup.dart';

class UIwelcome extends StatelessWidget {
  const UIwelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
            child: Column(
              children:  [
                const Text(
                  'Welcome',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('slash flutter provides extraordinary flutter',
                    style: TextStyle(
                      fontSize: 15,
                    )),
                const Text(' tutorials. Do Subscribe ',
                    style: TextStyle(
                      fontSize: 15,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Image.network(height: 290,'data:image/jpeg;base64,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'),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(

                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UILoginScreen()));
                  } ,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UISignup()));
                  } ,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),

                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}