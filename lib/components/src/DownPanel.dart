part of '../component.dart';

Widget downPanel(context) {
  const String info_marker_black = 'assets/info_marker_black.svg';
  const String book_marker_black = 'assets/book_marker_black.svg';
  const String ellipsis_marker_black = 'assets/ellipsis_marker_black.svg';

  return Container(
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
        Expanded(
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
                  onPressed: () {},
                  icon: SvgPicture.asset(info_marker_black),
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
                  onPressed: () {},
                  icon: SvgPicture.asset(book_marker_black),
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
                  onPressed: () {},
                  icon: SvgPicture.asset(ellipsis_marker_black),
                ),
                Text(
                  "Ноджы",
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            )),
        Expanded(
          flex: 1,
          child: SizedBox(
            width: 50.0,
          ),
        ),
      ],
    ),
  );
}
