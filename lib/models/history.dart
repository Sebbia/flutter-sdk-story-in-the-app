import 'dart:collection';
import 'package:flutter/material.dart';

class History with ChangeNotifier{
  final String id;
  final String imgUrl;
  final String title;
  final String textTitle;
  final String text;
  final String buttonText;
  final color;

  History({
    @required this.id,
    @required this.imgUrl,
    @required this.title,
    @required this.textTitle,
    @required this.text,
    @required this.buttonText,
    @required this.color
  });
}

class HistoryData with ChangeNotifier{

  List<History> _items = [
    History(
      id: '1',
      imgUrl: 'https://images.pexels.com/photos/922379/pexels-photo-922379.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      title: 'First H',
      textTitle: 'Я заголовок!',
      text: 'Подзаголовок',
      buttonText: null,
      color: '0xFF33691E',
    ),

    History(
      id: '2',
      imgUrl: 'https://images.pexels.com/photos/3646671/pexels-photo-3646671.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      title: 'Second H',
      textTitle: 'Это вторая история',
      text: 'Здесь вы подробнее узнаете о ...',
      buttonText: 'Продолжение',
      color: '0xFF33691E',
    ),

    History(
      id: '3',
      imgUrl: 'https://images.pexels.com/photos/2563733/pexels-photo-2563733.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      title: 'Third H',
      textTitle: 'Я заголовок!',
      text: 'Я подзаголовок!',
      buttonText: null,
      color: '0xFF33691E',
    ),

    History(
      id: '4',
      imgUrl: 'https://images.pexels.com/photos/2397645/pexels-photo-2397645.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      title: 'Fourth H',
      textTitle: 'Это Заголовок.',
      text: 'А это основной текст',
      buttonText: null,
      color: '0xFF33691E',
    ),

    History(
      id: '5',
      imgUrl: 'https://images.pexels.com/photos/5775357/pexels-photo-5775357.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      title: 'Fifth H',
      textTitle: 'Это поезд.',
      text: 'Он ожидает машиниста Антона.',
      buttonText: 'Узнать побробнее',
      color: '0xFF33691E',
    )
  ];

  UnmodifiableListView<History> get items => UnmodifiableListView(_items);

  History getElementById(String id) => _items.singleWhere((value) => value.id == id);
}