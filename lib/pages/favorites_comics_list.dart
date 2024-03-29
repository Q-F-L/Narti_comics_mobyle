import 'package:flutter/material.dart';
import 'package:narti_project/network/comics/comics.dart';
import '../components/component.dart';
import '../themes/theme.dart';

class FavoritesComicsListPage extends StatefulWidget {
  const FavoritesComicsListPage({super.key});

  @override
  State<FavoritesComicsListPage> createState() => _FavoritesComicsListPage();
}

class _FavoritesComicsListPage extends State<FavoritesComicsListPage> {
  @override
  Widget build(BuildContext context) {
    List<Comics> favorites = [];

    for (int i = 0; i < comics.length; i++) {
      if (comics[i].favorites) favorites.add(comics[i]);
    }

    return Scaffold(
      appBar: myAppBar(context),
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        fit: StackFit.loose,
        children: [
          GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: favorites.length,
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
                              image: AssetImage(favorites[index].image),
                            ),
                            IconButton(
                                onPressed: () {
                                  if (favorites[index].favorites) {
                                    setState(() {
                                      comics[index].favorites = false;
                                    });
                                  } else {
                                    setState(() {
                                      comics[index].favorites = true;
                                    });
                                  }
                                },
                                icon: Icon(
                                  favorites[index].favorites
                                      ? Icons.star
                                      : Icons.star_border,
                                  color: AppColors.white,
                                ))
                          ],
                        ),
                        Text(
                          favorites[index].name,
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
