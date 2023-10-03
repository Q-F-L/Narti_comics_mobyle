import 'package:flutter/material.dart';
import '../components/component.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPage();
}

class _ContactPage extends State<ContactPage> {
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
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: const Text(
                    "Мах социалон сетьты",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ),
                infoLink(context, "https://vm.tiktok.com/ZSeQyUMnP/",
                    "tiktok_marker1.svg"),
                const SizedBox(
                  height: 10,
                ),
                infoLink(
                    context,
                    "https://instagram.com/narty_project?utm_medium=copy_link",
                    "instagram_marker.svg"),
                const SizedBox(
                  height: 10,
                ),
                infoLink(context, "https://t.me/narty_project",
                    "telegram_marker.svg"),
                const SizedBox(
                  height: 10,
                ),
                infoLink(
                    context, "https://vk.com/narty_project", "vk_marker.svg"),
                const SizedBox(
                  height: 10,
                ),
                infoLink(context, "https://www.facebook.com/project.narty/",
                    "facebook_marker.svg"),
                const SizedBox(
                  height: 10,
                ),
                infoLink(context, "https://twitter.com/narty_project",
                    "twitter_marker.svg"),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: const Text(
                    "Фыстæг авритын",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Text(
                    "Ам дæ бон у махæн фарста æви фыстæг арвитын, æмæ мах зæрдæдиагæй дзуапп ратджыстæм!",
                    style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.surface),
                    textAlign: TextAlign.left,
                  ),
                ),
                Form(
                    child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.onPrimary,
                          hintText: "Дæ пост",
                          hintStyle: Theme.of(context).textTheme.labelLarge),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      textAlignVertical: TextAlignVertical.top,
                      minLines: 7,
                      maxLines: 10,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                          isCollapsed: true,
                          alignLabelWithHint: true,
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.onPrimary,
                          hintText: "Фарста кæнæ фæндон",
                          hintStyle: Theme.of(context).textTheme.labelLarge),
                    ),
                    const SizedBox(
                      height: 91,
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
}
