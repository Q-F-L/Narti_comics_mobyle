import 'package:flutter/material.dart';
import '../components/component.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPage();
}

class _AboutPage extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.passthrough,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            children: [
              const TreeButtonPanel(),
              const Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              Image.asset('assets/Image1.png'),
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              const Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    'Верси 1.1\nСборкæ 1\n© NARTY',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
          downPanel(context)
        ],
      ),
    );
  }
}
