part of '../component.dart';

Widget downPanel(context) {
  const String infoMarkerBlack = 'assets/info_marker_black.svg';
  const String bookMarkerBlack = 'assets/book_marker_black.svg';
  const String ellipsisMarkerBlack = 'assets/ellipsis_marker_black.svg';

  return Container(
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.onBackground,
      border: Border(
          top: BorderSide(
        color: Theme.of(context).colorScheme.onPrimary,
        width: 1,
      )),
    ),
    height: 83.0,
    child: Row(
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox(
            width: 50.0,
          ),
        ),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                IconButton(
                  splashRadius: 1,
                  onPressed: () {
                    if (ModalRoute.of(context)!.settings.name != "/info") {
                      Navigator.pushNamed(context, "/info");
                    }
                  },
                  icon: SvgPicture.asset(infoMarkerBlack),
                ),
                Text(
                  "Инфо",
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            )),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                IconButton(
                  splashRadius: 1,
                  onPressed: () {
                    if (ModalRoute.of(context)!.settings.name != "/") {
                      Navigator.pushNamed(context, "/");
                    }
                  },
                  icon: SvgPicture.asset(bookMarkerBlack),
                ),
                Text(
                  "Кадджытæ",
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            )),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                IconButton(
                  splashRadius: 1,
                  onPressed: () {
                    if (ModalRoute.of(context)!.settings.name != "/contact") {
                      Navigator.pushNamed(context, "/contact");
                    }
                  },
                  icon: SvgPicture.asset(ellipsisMarkerBlack),
                ),
                Text(
                  "Ноджы",
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            )),
        const Expanded(
          flex: 1,
          child: SizedBox(
            width: 50.0,
          ),
        ),
      ],
    ),
  );
}
