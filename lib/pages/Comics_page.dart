import 'package:flutter/material.dart';
import 'package:narti_project/network/comics/comics.dart';
import 'package:narti_project/network/comics/marker.dart';
import 'package:narti_project/pages/favoritesComicsList.dart';
import '../components/component.dart';
import '../themes/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComicsPage extends StatefulWidget {
  const ComicsPage({super.key});

  @override
  State<ComicsPage> createState() => _ComicsPage();
}

class _ComicsPage extends State<ComicsPage> {
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
              itemCount: comics.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 13,
                mainAxisExtent: 240,
              ),
              padding:
                  EdgeInsets.only(top: 17, left: 16, right: 16, bottom: 85),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    //перейти на детальную страницу
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/comic");
                    },
                    child: Container(
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
                                image: AssetImage('${comics[index].image}'),
                              ),
                              IconButton(
                                  onPressed: () {
                                    if (comics[index].favorites) {
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
                                    comics[index].favorites
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: AppColors.white,
                                  ))
                            ],
                          ),
                          Text(
                            "${comics[index].name}",
                            style: Theme.of(context).textTheme.titleLarge,
                          )
                        ],
                      ),
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
