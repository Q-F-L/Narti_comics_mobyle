import 'package:flutter/material.dart';
import '../components/component.dart';

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
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const TreeButtonPanel(),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Уведомленитæ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: const Text(
                              'Баиу кæн уведомленитæ, цæмæй ногæй\nмацы рауадзай',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      customSwitcher()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Язык',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                languageSwitcher('РУССКИЙ', 0),
                languageSwitcher('ИРОН', 1),
                languageSwitcher('ENGLISH', 2),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Тема',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.onPrimary)),
                    onPressed: () {
                      setState(() {
                        ThemeData.light();
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Урс',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? const Icon(
                                Icons.check,
                                color: Colors.grey,
                                size: 30.0,
                              )
                            : const Icon(
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
                            ? const Icon(
                                Icons.check,
                                color: Colors.grey,
                                size: 30.0,
                              )
                            : const Icon(
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

  Widget customSwitcher() => Transform.scale(
        scale: 1.5,
        child: Switch(
            activeColor: Colors.amber,
            activeTrackColor: Colors.white,
            splashRadius: 0.0,
            value: _notify,
            onChanged: ((value) => {
                  setState(() {
                    _notify = !value;
                  })
                })),
      );

  Widget languageSwitcher(String langText, int countLang) => ElevatedButton(
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
            langText,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          _language == countLang
              ? const Icon(
                  Icons.check,
                  color: Colors.grey,
                  size: 30.0,
                )
              : const Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 30.0,
                ),
        ],
      ));
}
