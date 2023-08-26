part of '../component.dart';

PreferredSizeWidget AppBarComic(context) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).buttonTheme.colorScheme!.primary,
        )),
    actions: [
      IconButton(
        icon: appBarMarker
            ? SvgPicture.asset('assets/marker_full_black.svg')
            : SvgPicture.asset('assets/marker.svg'),
        onPressed: () {
          // if (appBarMarker) {
          //   appBarMarker = false;
          //   Navigator.pop(context);
          // } else if (appBarStar) {
          //   appBarStar = false;
          //   Navigator.pop(context);
          //   appBarMarker = true;
          //   // Navigator.pushNamed(context, '/marker');
          // } else {
          //   appBarMarker = true;
          //   // Navigator.pushNamed(context, '/marker');
          // }
        },
      ),
    ],
  );
}
