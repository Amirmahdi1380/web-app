import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_sample/screens/components/sidebar_menu.dart';
import 'package:web_app_sample/responsive.dart';
import 'package:web_app_sample/screens/constant/constant.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: SafeArea(
        child: Scaffold(
          drawer: const SideMenu(),
          appBar: AppBar(
            title: const Text('data'),
          ),
          body: const Text('data'),
        ),
      ),
    );
  }
}
