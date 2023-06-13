import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/textstyles.dart';
import 'package:shyp/screens/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shyp',
      theme: ThemeData(
          iconTheme: const IconThemeData(color: ApplicationColors.primaryColor),
          colorScheme:
              const ColorScheme.light(primary: ApplicationColors.primaryColor),
          primaryColor: ApplicationColors.primaryColor,
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: ApplicationColors.scaffoldColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
          textTheme: TextTheme(
              bodyMedium: TextStyles.bodyText,
              bodySmall: TextStyles.bodyText,
              displayLarge: TextStyles.h1,
              displayMedium: TextStyles.h2,
              displaySmall: TextStyles.h3)),
      home: const LandingScreen(),
    );
  }
}
