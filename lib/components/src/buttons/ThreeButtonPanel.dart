part of '../../component.dart';

class TreeButtonPanel extends StatefulWidget {
  const TreeButtonPanel({super.key});

  @override
  State<TreeButtonPanel> createState() => _TreeButtonPanel();
}

class _TreeButtonPanel extends State<TreeButtonPanel> {
  late bool _contactView = true, _settingsView = false, _aboutView = false;

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
          _contactView
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
                        _aboutView = false;
                        _contactView = true;
                        _settingsView = false;
                      });
                    },
                    child: Text(
                      "Контакттæ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
          _contactView || _settingsView
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
          _settingsView
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
                        _aboutView = false;
                        _contactView = false;
                        _settingsView = true;
                      });
                    },
                    child: Text(
                      "Настройкæтæ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
          _settingsView || _aboutView
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
          _aboutView
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
                        _aboutView = true;
                        _contactView = false;
                        _settingsView = false;
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
