// part of '../../component.dart';
//
// Widget scrolPanel2(alignment, mediaQuery, context) {
//   bool leprol = true;
//   return Stack(
//     clipBehavior: Clip.none,
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextButton(
//               style: ButtonStyle(
//                 fixedSize: MaterialStateProperty.all(
//                     Size(mediaQuery.size.width * 0.4, 29)),
//                 shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10.0),
//                         bottomLeft: Radius.circular(10.0)))),
//                 backgroundColor:
//                     MaterialStateProperty.all(Color.fromRGBO(208, 208, 208, 1)),
//               ),
//               onPressed: () {
//                 leprol = !leprol;
//               },
//               child: Text(
//                 "Об эпосе",
//                 style: Theme.of(context).textTheme.headlineSmall,
//               )),
//           TextButton(
//               style: ButtonStyle(
//                 fixedSize: MaterialStateProperty.all(
//                     Size(mediaQuery.size.width * 0.4, 29)),
//                 shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(10.0),
//                         bottomRight: Radius.circular(10.0)))),
//                 backgroundColor:
//                     MaterialStateProperty.all(Color.fromRGBO(208, 208, 208, 1)),
//               ),
//               onPressed: () {
//                 setState(() {
//                   leprol = !leprol;
//                 });
//               },
//               child: Text(
//                 "О проекте",
//                 style: Theme.of(context).textTheme.headlineSmall,
//               )),
//         ],
//       ),
//       Visibility(
//         visible: leprol,
//         child: Positioned(
//           // left: 0,
//           right: 0,
//           child: TextButton(
//             style: ButtonStyle(
//               fixedSize: MaterialStateProperty.all(
//                   Size(mediaQuery.size.width * 0.45, 29)),
//               shadowColor:
//                   MaterialStateProperty.all(Color.fromRGBO(30, 31, 35, 0.5)),
//               elevation: MaterialStateProperty.all(20),
//               shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10.0)))),
//               backgroundColor: MaterialStateProperty.all(Colors.white),
//             ),
//             onPressed: () {},
//             child: Text(
//               "Об эпосе",
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ),
//         ),
//       ),
//       Visibility(
//         visible: !leprol,
//         child: Positioned(
//           left: 0,
//           // right: 0,
//           child: TextButton(
//             style: ButtonStyle(
//               fixedSize: MaterialStateProperty.all(
//                   Size(mediaQuery.size.width * 0.45, 29)),
//               shadowColor:
//                   MaterialStateProperty.all(Color.fromRGBO(30, 31, 35, 0.5)),
//               elevation: MaterialStateProperty.all(20),
//               shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10.0)))),
//               backgroundColor: MaterialStateProperty.all(Colors.white),
//             ),
//             onPressed: () {},
//             child: Text(
//               "Об эпосе",
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ),
//         ),
//       ),
//     ],
//   );
// }
