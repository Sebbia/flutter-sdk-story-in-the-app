import 'package:first_flutter_app/models/history.dart';
import 'package:first_flutter_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Задает только вертикальную ориентацию экрана
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MultiProvider(
      providers: [ChangeNotifierProvider<HistoryData>(
        create: (context) => HistoryData(),
      )],

      child: MaterialApp(
        title: 'Demo App',
        theme: ThemeData(
          backgroundColor: Colors.white,
          textTheme: GoogleFonts.marmeladTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: Home(),
      ),
    );
  }
}