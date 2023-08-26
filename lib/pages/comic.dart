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

class ComicPage extends StatefulWidget {
  const ComicPage({super.key});

  @override
  State<ComicPage> createState() => _ComicPage();
}

class _ComicPage extends State<ComicPage> {
  int? maxLength = 0;
  late final PageController _pageController;
  late int page;
  bool _visibilityOfTheBottomPanel = true;
  late Future<RC> data;

  @override
  void initState() {
    super.initState();
    data = getData();
    page = 0;
    _pageController = PageController(initialPage: page);
  }

  @override
  dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _prevPage() {
    _pageController.previousPage(
      duration: Duration(milliseconds: 700),
      curve: Curves.ease,
    );
  }

  _nextPage() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 700),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarComic(context),
        body: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              fit: StackFit.loose,
              children: [
                GestureDetector(
                  onTapDown: (_tapDownDetails) {
                    setState(() {
                      _visibilityOfTheBottomPanel =
                          !_visibilityOfTheBottomPanel;
                    });
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.80,
                    child: InteractiveViewer(
                      maxScale: 3,
                      minScale: 1,
                      child: FutureBuilder<RC>(
                        future: data,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            maxLength = snapshot.data?.data!.pages?.length;

                            return PageView.builder(
                              itemBuilder: (context, index) {
                                var uri =
                                    "https://msofter.com/narty/${snapshot.data?.data!.pages![index].image}";
                                // var encoded = Uri.encodeFull(uri);
                                return Image.network(uri);
                              },
                              itemCount: snapshot.data?.data!.pages?.length,
                              physics: NeverScrollableScrollPhysics(),
                              controller: _pageController,
                              onPageChanged: (int currentPage) {
                                setState(() {
                                  page = currentPage;
                                });
                              },
                            );
                          } else if (snapshot.hasError) {
                            return Text("Error: ${snapshot.error}");
                          } else {
                            return Text("Загрузка...");
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: _visibilityOfTheBottomPanel,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                onPressed: _prevPage,
                                icon:
                                    SvgPicture.asset("assets/vector_left.svg"),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text("${page + 1}/${maxLength}",
                                  textAlign: TextAlign.center),
                            ),
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                onPressed: _nextPage,
                                icon:
                                    SvgPicture.asset("assets/vector_right.svg"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      downPanel(context)
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
