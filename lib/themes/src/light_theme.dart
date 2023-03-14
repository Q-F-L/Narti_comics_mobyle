part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.white,
      onPrimary: AppColors.greyD0,
      secondary: AppColors.greyA1,
      onSecondary: AppColors.greyA1,
      surface: AppColors.grey71,
      onSurface: AppColors.grey42,
      background: AppColors.white,
      onBackground: AppColors.white,
      error: AppColors.white,
      onError: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      shape: Border(bottom: BorderSide(color: AppColors.greyD0, width: 1)),
      elevation: 4,
      backgroundColor: AppColors.white,
    ),
    textTheme: TextTheme(
      bodyMedium:
          TextStyle(color: AppColors.black, fontSize: 16), // Основной текст
      labelLarge:
          TextStyle(color: AppColors.grey71, fontSize: 12), // Поисковая строка
      labelMedium: TextStyle(color: AppColors.black, fontSize: 11),
      titleLarge:
          TextStyle(color: AppColors.black, fontSize: 15), // Название комикса
      titleSmall:
          TextStyle(color: AppColors.black, fontSize: 10), // В нижней панали
      headlineSmall: TextStyle(
        leadingDistribution: TextLeadingDistribution.even,
        color: AppColors.grey42,
        fontSize: 16,
        height: 2,
      ), // Текст для кнопки
      headlineMedium: TextStyle(
        color: AppColors.black,
        fontSize: 16,
        height: 2,
        leadingDistribution: TextLeadingDistribution.even,
      ),
    ),
  );
}
