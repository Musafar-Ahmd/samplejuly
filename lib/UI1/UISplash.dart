import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:samplejuly/UI1/welcome.dart';

class UISplashScreen extends StatefulWidget {
  const UISplashScreen({Key? key}) : super(key: key);

  @override
  State<UISplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<UISplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => UIwelcome())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGcAAAB/CAMAAADFGiw9AAAAdVBMVEX///9fyfgyufZeyPhgyfgEWZxcyPhax/hbx/hdyPgHW53O7PxSxfhIw/j5/f8LU5mP1/ra8f0xsO0ATpeD0/rs+P5vzPji9P4ASZUatfW7x9sMYKJ40PnH0eJwyfid2/oXqepskL1siLUARJN0jrgAP5GDm8BqHtEcAAADp0lEQVRogdXY63KbMBAFYMtcBIRAA3Xi1GnSNm3f/xGLuFmXlYStI2a6k59B35zVStg+HMLqg7NkqnKpfK1iLv74EMh8qReGcBamQDCmY0AQhhl90xsHYjwOZG8kxjIIMIbYoFXJYzBUHiDjyJMXNZCxOxzApAZjOIg0V8aeB8FscCAM4WjnFMN4HRCTetqGYlx5kIzbATAJ0x2zbwgmMfLoDoJhi2M/Ppg0ZttYBIZ5HUjTGCO2R3FywPtmXI05xwDBTKta4yQoZlrNYBiWmVezTkGCYL4OaZh7ChIIkzBvHEgasZxY1BEH0rQ5j8kwICMUj1PWT+Fp5uUcXSuDL5tlBJgrDoKZFUbdODDmbRoB9+YAGL62bGUMB5JGXAMzZTojH/6+GUdAPzp6HAgjVURGNG3JQzEMloYtf9Y0gbdA42/aACGYadDkW8CIA03DElKBpVluAUanATHG1WmkCX4RKE2zhMGkWa80K8NAaRhTxiwWo0YxFByTpg4GMgJMTUKEgYxAqpeuQJrGNzA5D2XedMZE9mKSAs1QWRJGMqeHTTU9KTOUMU0ayeSPm+ok/vmZe4yxadSknXKeS7X+0F9wuWreTIxj/VmxMFxhcgtT+pnxa4/t7bmRSUZG/uWWYsbbu6hfCKaWmcLGFM307+62bWVsmzOncUPTK+LGNCqTNtdHSChZv0YV/P40MiPOj83Y2jR6czRG3Af6kLGbmIKMUz832nPNmzx18ofRTU2ju2YyVyjRKog5mY/qn6ljMTQUgaEgknl5tCmyY2dMiGZejzXzjpqL0SFyoF+OQ0nQ7WlUqCztjATZGHOgCWj85ZZTTXs6HhXoXmaENjAzdD+zQDx3MwNUFiHMBPHCx2jQ7cz0OdvPyJDnTrNDW5gr5HgR3FwEs0DRmQnagRmgfBdGgWIyEnTLpNHMq8tZoNjMDMVnRmgPZoD4LszxmIYpwxVUb4G6y/dQ6LAB6i7ZeQeou1RVBYAKNzQyEOjdBc1MbGjYm2oHSDALhBgGC9Rd2gwKNSTUZUtFhbqsbVWo+owACUaHIiTq2rmUQICpU6Gu7furVK0FTiSY3lQGJ+uBUNef+36UNEQULtHMqMjqwBJ15/PgtJVe63HCQANjRpEUAX0LhQ7vPyhEZSDQz96jVCDoV+9KEg3KKpVYxxsMGXGAe7RCVgQKZbqjwajWORFYIn3EqC5CEjk3JxJknQgA9HtTos//DHKfIVF/EJDnrKKgv62fEdA/D7iIeHTTMD4AAAAASUVORK5CYII=')
            ],
          ),
        ),
      ),
    );
  }
}
