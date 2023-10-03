part of '../component.dart';

Widget findLine(context) {
  const String magnifyingGlass = 'assets/magnifying_glass.svg';

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      onTap: () {
        showSearch(
            context: context,
            // delegate to customize the search bar
            delegate: CustomSearchDelegate());
      },
      cursorColor: Theme.of(context).colorScheme.primary,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.onPrimary,
        prefixIcon: SvgPicture.asset(magnifyingGlass, fit: BoxFit.scaleDown),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onPrimary,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onPrimary,
            )),
        hintText: "Название комикса",
        hintStyle: Theme.of(context).textTheme.labelLarge,
      ),
    ),
  );
}

class CustomSearchDelegate extends SearchDelegate {
  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var comic in comics) {
      if (comic.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(comic.name);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var comic in comics) {
      if (comic.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(comic.name);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

// //Выпадающее поисковое окно
// class FindPanel extends StatefulWidget {
//   const FindPanel({super.key});

//   @override
//   State<FindPanel> createState() => _FindPanelState();
// }

// class _FindPanelState extends State<FindPanel> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: showSearch(context: context, delegate: delegate)
//     );
//   }
// }

// //Метод поиска нужного комикса по названию. Он будет выдавать первые 5 или меньше. В зависимости он экрана.
// List<Comics> findComic(String searchable) // Текст по которому ищут комикс.
// {
//   //Поиск по названию
//   List<Comics> varibel = [
//     Comics(id: -1, name: "None", image: "None", favorites: false)
//   ];

//   for (var comic in comics) {
//     if (comic.name.indexOf(searchable) != -1) {
//       varibel.add(comic);
//     }
//   }

//   if (varibel.isNotEmpty) {
//     varibel
//         .remove(Comics(id: -1, name: "None", image: "None", favorites: false));
//     return varibel;
//   } else {
//     return varibel;
//   }
// }
