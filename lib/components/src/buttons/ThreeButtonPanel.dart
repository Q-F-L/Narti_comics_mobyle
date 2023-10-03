part of '../../component.dart';

class TreeButtonPanel extends StatefulWidget {
  const TreeButtonPanel({super.key});

  @override
  State<TreeButtonPanel> createState() => _TreeButtonPanel();
}

class _TreeButtonPanel extends State<TreeButtonPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      height: 40.0,
      child: Row(
        children: [
          contactView
              ? Expanded(
                  flex: 6,
                  child: TextButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                        elevation: MaterialStateProperty.all(3),
                        shadowColor: MaterialStateProperty.all(Colors.grey),
                        minimumSize: MaterialStateProperty.all(Size(100, 50)),
                        overlayColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.primary),
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.primary)),
                    onPressed: () {},
                    child: Text(
                      "Контакттæ",
                      style: TextStyle(
                        leadingDistribution: TextLeadingDistribution.even,
                        color:
                            Theme.of(context).buttonTheme.colorScheme!.primary,
                        fontSize: 14,
                        height: 2,
                      ),
                    ),
                  ),
                )
              : Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/contact');
                        aboutView = false;
                        contactView = true;
                        settingsView = false;
                      });
                    },
                    child: Text(
                      "Контакттæ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
          contactView || settingsView
              ? SizedBox()
              : Expanded(
                  flex: 1,
                  child: VerticalDivider(
                    indent: 8,
                    endIndent: 8,
                    width: 2,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
          settingsView
              ? Expanded(
                  flex: 7,
                  child: TextButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                        elevation: MaterialStateProperty.all(3),
                        shadowColor: MaterialStateProperty.all(Colors.grey),
                        minimumSize: MaterialStateProperty.all(Size(100, 50)),
                        overlayColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.primary),
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.primary)),
                    onPressed: () {},
                    child: Text(
                      "Настройкæтæ",
                      style: TextStyle(
                        leadingDistribution: TextLeadingDistribution.even,
                        color:
                            Theme.of(context).buttonTheme.colorScheme!.primary,
                        fontSize: 14,
                        height: 2,
                      ),
                    ),
                  ),
                )
              : Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/settings');
                        aboutView = false;
                        contactView = false;
                        settingsView = true;
                      });
                    },
                    child: Text(
                      "Настройкæтæ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
          settingsView || aboutView
              ? SizedBox()
              : Expanded(
                  flex: 1,
                  child: VerticalDivider(
                    indent: 8,
                    endIndent: 8,
                    width: 2,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
          aboutView
              ? Expanded(
                  flex: 6,
                  child: TextButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                        elevation: MaterialStateProperty.all(3),
                        shadowColor: MaterialStateProperty.all(Colors.grey),
                        minimumSize: MaterialStateProperty.all(Size(100, 50)),
                        overlayColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.primary),
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.primary)),
                    onPressed: () {},
                    child: Text(
                      "Уæлæфтуан",
                      style: TextStyle(
                        leadingDistribution: TextLeadingDistribution.even,
                        color:
                            Theme.of(context).buttonTheme.colorScheme!.primary,
                        fontSize: 14,
                        height: 2,
                      ),
                    ),
                  ),
                )
              : Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/about');
                        aboutView = true;
                        contactView = false;
                        settingsView = false;
                      });
                    },
                    child: Text(
                      "Уæлæфтуан",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
