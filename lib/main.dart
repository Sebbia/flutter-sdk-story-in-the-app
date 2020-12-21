import 'package:app_story/Pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Models/history_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MultiProvider(
      providers: [ChangeNotifierProvider<HistoryData>(
        create: (context) => HistoryData()
      )],

      child: MaterialApp(
        title: 'Demo App',
        //theme: ThemeData(backgroundColor: Colors.white),
        home: Home(),
      ),
    );
  }
}