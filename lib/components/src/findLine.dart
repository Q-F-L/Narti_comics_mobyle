part of '../component.dart';

Widget findLine(context) {
  const String magnifyingGlass = 'assets/magnifying_glass.svg';

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
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
