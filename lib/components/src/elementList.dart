part of '../component.dart';

// Widget elementList(context) {
//   IconData _favouritIcon = Icons.star_border;
//   return Container(
//     decoration: BoxDecoration(
//         color: Theme.of(context).colorScheme.onPrimary,
//         borderRadius: BorderRadius.circular(10.0)),
//     padding: EdgeInsets.all(20),
//     child: Column(
//       children: <Widget>[
//         Stack(
//           alignment: Alignment.topRight,
//           children: [
//             Image(
//               image: AssetImage('assets/comic_book_cover.png'),
//             ),
//             IconButton(
//                 onPressed: () {
//                   setState(() {
//                     _favouritIcon = Icons.star;
//                   });
//                 },
//                 icon: Icon(
//                   _favouritIcon,
//                   color: AppColors.white,
//                 ))
//           ],
//         ),
//         Text(
//           "Starboy",
//           style: Theme.of(context).textTheme.titleLarge,
//         )
//       ],
//     ),
//   );
// }
