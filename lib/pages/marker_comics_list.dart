import 'package:flutter/material.dart';
import 'package:narti_project/network/comics/marker.dart';
import '../components/component.dart';
import '../themes/theme.dart';

class MarkerComicsListPage extends StatefulWidget {
  const MarkerComicsListPage({super.key});

  @override
  State<MarkerComicsListPage> createState() => _MarkerComicsListPage();
}

class _MarkerComicsListPage extends State<MarkerComicsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        fit: StackFit.loose,
        children: [
          GridView.builder(
              padding: const EdgeInsets.only(top: 16, bottom: 84),
              scrollDirection: Axis.vertical,
              itemCount: marker.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 120,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    //перейти на детальную страницу
                  },
                  child: Card(
                    margin:
                        const EdgeInsets.only(bottom: 23, right: 16, left: 16),
                    color: AppColors.greyD0,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Text(
                              '${marker[index].id}',
                              style: const TextStyle(
                                  fontSize: 40, color: AppColors.grey71),
                              textAlign: TextAlign.center,
                            )),
                        Expanded(
                            flex: 1,
                            child: Image(
                              image: AssetImage(marker[index].imageComics),
                              height: 600,
                              width: 910,
                            )),
                        const SizedBox(
                          width: 13,
                        ),
                        Expanded(
                            flex: 5,
                            child: Text('Страница ${marker[index].page}'))
                      ],
                    ),
                  ),
                );
              }),
          downPanel(context),
        ],
      ),
    );
  }
}
