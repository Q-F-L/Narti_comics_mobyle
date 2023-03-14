import 'package:flutter/material.dart';
import 'package:narti_project/pages/Comics_page.dart';
import 'package:narti_project/pages/Info_page.dart';
import 'package:narti_project/themes/theme.dart';

void main() => runApp(NartyApp());

class NartyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: createLightTheme(),
      darkTheme: createDarkTheme(),
      home: ComicsPage(),
      // home: InfoPage(),
    );
  }
}

class narty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/Main_text.png'),
        ),
      ),
    );
  }
}
