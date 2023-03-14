part of '../component.dart';

PreferredSizeWidget MyAppBar(
    context, void Function() callSetState, bool markerState) {
  const String star = 'assets/star.svg';

  return AppBar(
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
          icon: SvgPicture.asset(star),
          onPressed: () {},
        ),
      ),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        flex: 2,
        child: IconButton(
          icon: markerState
              ? SvgPicture.asset('assets/marker.svg')
              : SvgPicture.asset('assets/marker_full_black.svg'),
          onPressed: () => callSetState(),
        ),
      ),
      const SizedBox(
        width: 23,
      )
    ],
  );
}
