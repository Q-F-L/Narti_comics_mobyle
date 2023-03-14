import 'package:flutter/material.dart';
import 'package:narti_project/pages/Comics_page.dart';
import '../components/component.dart';
import '../themes/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComicsPage extends StatefulWidget {
  const ComicsPage({super.key});

  @override
  State<ComicsPage> createState() => _ComicsPage();
}

class _ComicsPage extends State<ComicsPage> {
  IconData _favouritIcon = Icons.star_border;
  var markerState = true;

  void changeStateMarker() => setState(() {
        markerState = !markerState;
      });

  void callSetState() {
    setState(() {
      if (_favouritIcon == Icons.star) {
        _favouritIcon = Icons.star_border;
      } else {
        _favouritIcon = Icons.star;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, changeStateMarker, markerState),
      body: markerState
          ? comicsList(context, _favouritIcon, callSetState)
          : markerComicsList(context),
    );
  }
}

Widget markerComicsList(context) {
  return Stack(
    alignment: AlignmentDirectional.bottomStart,
    fit: StackFit.loose,
    children: [
      GridView.builder(
          padding: EdgeInsets.only(top: 16, bottom: 84),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: 120,
          ),
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(bottom: 23, right: 16, left: 16),
              color: AppColors.greyD0,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Text(
                        '$index',
                        style: TextStyle(fontSize: 40, color: AppColors.grey71),
                        textAlign: TextAlign.center,
                      )),
                  Expanded(
                      flex: 1,
                      child: Image(
                        image: AssetImage('assets/comic_book_cover.png'),
                        height: 600,
                        width: 910,
                      )),
                  SizedBox(
                    width: 13,
                  ),
                  Expanded(flex: 5, child: Text('Страница 2'))
                ],
              ),
            );
          }),
      downPanel(context),
    ],
  );
}

Widget comicsList(
    context, IconData favouritIcon, void Function() callSetState) {
  return Stack(
    alignment: AlignmentDirectional.bottomStart,
    fit: StackFit.loose,
    children: [
      GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 13,
            mainAxisExtent: 240,
          ),
          padding: EdgeInsets.only(top: 17, left: 16, right: 16, bottom: 85),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image(
                        image: AssetImage('assets/comic_book_cover.png'),
                      ),
                      IconButton(
                          onPressed: () => callSetState(),
                          icon: Icon(
                            favouritIcon,
                            color: AppColors.white,
                          ))
                    ],
                  ),
                  Text(
                    "Starboy",
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
            );
          }),
      downPanel(context),
    ],
  );
}
