import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_to_speech/home.dart';
import 'package:provider/provider.dart';
import 'package:text_to_speech/provider/notes.dart';
import 'package:text_to_speech/widgets/speech_to_text.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => NotesProvider())],
      child: MyApp(),
    ),
  );
}

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
  textTheme: GoogleFonts.dmSansTextTheme(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(), theme: theme);
  }
}
