import 'dart:collection';
import 'package:flutter/widgets.dart';

class History with ChangeNotifier{
  final String id;

  final String titleUrl;
  final String title;

  final String textTitle;
  final String text;
  final String buttonText;
  final String buttonUrl;

  History({
    @required this.id,
    @required this.titleUrl,
    @required this.title,
    @required this.textTitle,
    @required this.text,
    @required this.buttonText,
    @required this.buttonUrl
  });
}

class HistoryData with ChangeNotifier{

  List<History> _items = [

    History(
      id: '1',
      titleUrl: 'https://images.pexels.com/photos/922379/pexels-photo-922379.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      title: 'First H',
      textTitle: 'Заголовок First H',
      text: 'подзаголовок First H',
      buttonText: 'SEBBIA',
      buttonUrl: "https://github.com/Sebbia"
    ),

    History(
      id: '2',
      titleUrl: 'https://images.pexels.com/photos/3646671/pexels-photo-3646671.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      title: 'Second H',
      textTitle: 'Заголовок Second H',
      text: 'подзаголовок Second H',
      buttonText: 'Flutter',
      buttonUrl: "https://flutter.dev/"
    ),

    History(
      id: '3',
      titleUrl: 'https://images.pexels.com/photos/2563733/pexels-photo-2563733.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      title: 'Third H',
      textTitle: 'Заголовок Third H',
      text: 'подзаголовок Third H',
      buttonText: null,
      buttonUrl: null
    ),

    History(
      id: '4',
      titleUrl: 'https://images.pexels.com/photos/2397645/pexels-photo-2397645.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      title: 'Fourth H',
      textTitle: 'Заголовок Fourth H',
      text: 'подзаголовок Fourth H',
      buttonText: null,
      buttonUrl: "https://dartpad.dev/"
    ),

    History(
      id: '5',
      titleUrl: 'https://images.pexels.com/photos/5775357/pexels-photo-5775357.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      title: 'Fifth H',
      textTitle: 'Заголовок Fifth H',
      text: 'подзаголовок Fifth H',
      buttonText: 'Dart Pad',
      buttonUrl: "https://dartpad.dev/"
    )
  ];

  UnmodifiableListView<History> get items => UnmodifiableListView(_items);

  History getElementById(String id) => _items.singleWhere((value) => value.id == id);
}

