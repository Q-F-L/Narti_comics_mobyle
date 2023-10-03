import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:narti_project/network/comics/comic.dart';
import 'package:narti_project/network/comics/comics.dart';
import 'package:narti_project/network/comics/marker.dart';
import 'package:narti_project/pages/Comics_page.dart';
import '../components/component.dart';
import '../themes/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPage();
}

class _SettingPage extends State<SettingPage> {
  bool _notify = true;
  int _language = 1; // 0-ru, 1-iron, 2-en

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.passthrough,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                TreeButtonPanel(),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Уведомленитæ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Text(
                              'Баиу кæн уведомленитæ, цæмæй ногæй\nмацы рауадзай',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      CustomSwitcher()
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Язык',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                LanguageSwitcher('РУССКИЙ', 0),
                LanguageSwitcher('ИРОН', 1),
                LanguageSwitcher('ENGLISH', 2),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Тема',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.onPrimary)),
                    onPressed: () {
                      setState(() {
                        print(MediaQuery.of(context).platformBrightness ==
                            Brightness.light);
                        ThemeData.light();
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Урс',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? Icon(
                                Icons.check,
                                color: Colors.grey,
                                size: 30.0,
                              )
                            : Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 30.0,
                              ),
                      ],
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.onPrimary)),
                    onPressed: () {
                      setState(() {
                        print(MediaQuery.of(context).platformBrightness ==
                            Brightness.dark);
                        // print(MediaQuery.of(context).platformBrightness ==
                        //     Brightness.dark);
                        ThemeData.dark();
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Сау',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Icon(
                                Icons.check,
                                color: Colors.grey,
                                size: 30.0,
                              )
                            : Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 30.0,
                              ),
                      ],
                    ))
              ],
            ),
          ),
          downPanel(context)
        ],
      ),
    );
  }

  Widget CustomSwitcher() => Transform.scale(
        scale: 1.5,
        child: Switch(
            activeColor: Colors.amber,
            activeTrackColor: Colors.white,
            splashRadius: 0.0,
            value: _notify,
            onChanged: ((value) => {
                  setState(() {
                    _notify = value!;
                  })
                })),
      );

  Widget LanguageSwitcher(String langText, int countLang) => ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.onPrimary)),
      onPressed: () {
        setState(() {
          _language = countLang;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$langText',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          _language == countLang
              ? Icon(
                  Icons.check,
                  color: Colors.grey,
                  size: 30.0,
                )
              : Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 30.0,
                ),
        ],
      ));
}
