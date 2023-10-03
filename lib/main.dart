import 'package:flutter/material.dart';
import 'package:narti_project/pages/comics_page.dart';
import 'package:narti_project/pages/info_page.dart';
import 'package:narti_project/pages/about.dart';
import 'package:narti_project/pages/comic.dart';
import 'package:narti_project/pages/contact.dart';
import 'package:narti_project/pages/marker_comics_list.dart';
import 'package:narti_project/pages/settings.dart';
import 'package:narti_project/themes/theme.dart';
import 'package:narti_project/pages/favorites_comics_list.dart';
import 'package:flutter/services.dart';

void main() => runApp(const NartyApp());

class NartyApp extends StatelessWidget {
  const NartyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: createLightTheme(),
      darkTheme: createDarkTheme(),
      // home: ContactPage(),
      routes: {
        '/': (context) => const ComicsPage(),
        '/marker': (context) => const MarkerComicsListPage(),
        '/favorites': (context) => const FavoritesComicsListPage(),
        '/comic': (context) => const ComicPage(),
        '/info': (context) => const InfoPage(),
        '/contact': (context) => const ContactPage(),
        '/settings': (context) => const SettingPage(),
        '/about': (context) => const AboutPage()
      },
    );
  }
}
