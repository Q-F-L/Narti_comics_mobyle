part of '../../component.dart';

Widget infoLink(context, String link, String assetImage) {
  return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/$assetImage',
            width: 30,
            height: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            child: Text(
              overflow: TextOverflow.ellipsis,
              link,
              style: const TextStyle(fontSize: 11),
            ),
          )
        ],
      ));
}
