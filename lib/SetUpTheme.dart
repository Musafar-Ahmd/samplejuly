import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final ThemeData themeDark = ThemeData.dark().copyWith(
  // iconTheme: IconThemeData(
  //   color: Colors.red,
  // ),
);

final ThemeData themeLight = ThemeData.light();

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final _isDarkTheme = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isDarkTheme,
      builder: (context, bool isDark, _) => MaterialApp(
        theme: themeLight,
        darkTheme: themeDark,
        themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
        home: Scaffold(
          body: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: MyWidget(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SwitchThemeButton(onPressed: _switchTheme),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _switchTheme() {
    _isDarkTheme.value = !_isDarkTheme.value;
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Make me green!', style: Theme.of(context).textTheme.headline4);
  }
}

class SwitchThemeButton extends StatelessWidget {
  SwitchThemeButton({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        Icons.dark_mode_outlined,
      color: IconTheme.of(context).color,
      ),
      onPressed: onPressed,
    );
  }
}