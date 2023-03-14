part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.black,
      onPrimary: AppColors.grey42,
      secondary: AppColors.grey71,
      onSecondary: AppColors.grey71,
      surface: AppColors.greyA1,
      onSurface: AppColors.greyD0,
      background: AppColors.black,
      onBackground: AppColors.darkColorDownPanel,
      error: AppColors.black,
      onError: AppColors.black,
    ),
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: const AppBarTheme(
      shape: Border(bottom: BorderSide(color: AppColors.grey42, width: 1)),
      elevation: 4,
      backgroundColor: AppColors.black,
    ),
    textTheme: TextTheme(
      bodyMedium:
          TextStyle(color: AppColors.white, fontSize: 16), // Основной текст
      labelLarge:
          TextStyle(color: AppColors.white, fontSize: 12), // Поисковая строка
      labelMedium: TextStyle(color: AppColors.white, fontSize: 11),
      titleLarge:
          TextStyle(color: AppColors.white, fontSize: 15), // Название комикса
      titleSmall:
          TextStyle(color: AppColors.white, fontSize: 10), // В нижней панали
      // headlineSmall: TextStyle(color: AppColors.white, fontSize: 12),
    ),
  );
}
