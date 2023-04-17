import 'package:flutter/material.dart';
import 'package:narti_project/network/comics/comics.dart';
import 'package:narti_project/network/comics/marker.dart';
import 'package:narti_project/pages/Comics_page.dart';
import '../components/component.dart';
import '../themes/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoritesComicsListPage extends StatefulWidget {
  const FavoritesComicsListPage({super.key});

  @override
  State<FavoritesComicsListPage> createState() => _FavoritesComicsListPage();
}

class _FavoritesComicsListPage extends State<FavoritesComicsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context),
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        fit: StackFit.loose,
        children: [
          GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 13,
                mainAxisExtent: 240,
              ),
              padding: const EdgeInsets.only(
                  top: 17, left: 16, right: 16, bottom: 85),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    //перейти на детальную страницу
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Image(
                              image: AssetImage('${favorites[index].image}'),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  favorites[index].favorites
                                      ? Icons.star_border
                                      : Icons.star,
                                  color: AppColors.white,
                                ))
                          ],
                        ),
                        Text(
                          "${favorites[index].name}",
                          style: Theme.of(context).textTheme.titleLarge,
                        )
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
