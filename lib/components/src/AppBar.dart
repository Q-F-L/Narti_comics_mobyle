part of '../component.dart';

PreferredSizeWidget MyAppBar(context) {
  return AppBar(
    leading: Text(""),
    actions: [
      const SizedBox(
        width: 16,
      ),
      Expanded(flex: 10, child: findLine(context)),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        flex: 2,
        child: IconButton(
          icon: appBarStar
              ? SvgPicture.asset('assets/star_full_black.svg')
              : SvgPicture.asset('assets/star.svg'),
          onPressed: () {
            if (appBarStar) {
              appBarStar = false;
              Navigator.pop(context);
            } else if (appBarMarker) {
              appBarMarker = false;
              Navigator.pop(context);
              appBarStar = true;
              Navigator.pushNamed(context, '/favorites');
            } else {
              appBarStar = true;
              Navigator.pushNamed(context, '/favorites');
            }
          },
        ),
      ),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        flex: 2,
        child: IconButton(
          icon: appBarMarker
              ? SvgPicture.asset('assets/marker_full_black.svg')
              : SvgPicture.asset('assets/marker.svg'),
          onPressed: () {
            if (appBarMarker) {
              appBarMarker = false;
              Navigator.pop(context);
            } else if (appBarStar) {
              appBarStar = false;
              Navigator.pop(context);
              appBarMarker = true;
              Navigator.pushNamed(context, '/marker');
            } else {
              appBarMarker = true;
              Navigator.pushNamed(context, '/marker');
            }
          },
        ),
      ),
      const SizedBox(
        width: 23,
      )
    ],
  );
}
