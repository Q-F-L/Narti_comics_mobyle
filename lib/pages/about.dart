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
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            children: [
              TreeButtonPanel(),
              Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              Image.asset('assets/Image1.png'),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Expanded(
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
