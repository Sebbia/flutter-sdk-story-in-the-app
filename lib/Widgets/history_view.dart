import 'dart:ui';
import 'package:first_flutter_app/models/history.dart';
import 'package:first_flutter_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import 'item_card.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final master = Provider.of<Story>(context, listen: false);
    final history = Provider.of<HistoryData>(context, listen: false);

    /*return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: history.items.length,
              itemBuilder: (context, int index) => ChangeNotifierProvider.value(value: history.items[index]),*/


    /*return Container(
        child: Container(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: history.items.length,
              itemBuilder: (context, int index) => ChangeNotifierProvider.value(value: history.items[index]),

          child: Column(
            children: <Widget>[*/

                return PageView(

                    /*child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage('https://images.pexels.com/photos/922379/pexels-photo-922379.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                            fit: BoxFit.cover
                        ),
                      ),*/

                        children: <Widget>[

                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage('https://images.pexels.com/photos/2563733/pexels-photo-2563733.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),

                          //Progress bar
                          Container(
                              margin: const EdgeInsets.only(top: 35, left: 15, right: 15),

                              child: LinearPercentIndicator(
                                animation: true,
                                animationDuration: 5000,
                                percent: 1,
                                backgroundColor: Colors.white12,
                                progressColor: Colors.white,
                              )
                          ),

                          //Кнопка закрытия истории
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: FlatButton(
                                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));},
                                child:Icon(Icons.close, size: 20, color: Colors.white12)),
                          ),

                          //Текст истории
                          Container(
                            child: Column(
                                children: <Widget>[
                                  Text('Заголовок', style: TextStyle(color: Colors.black, fontSize: 25.0)),
                                  SizedBox(height: 5),
                                  Text('Подзаголовок', style: TextStyle(color: Colors.black, fontSize: 15.0))
                                ]
                            ),
                          ),

                          //Кнопка 'Побробнее'
                          Container(
                            margin: EdgeInsets.only(top: 500),
                            alignment: Alignment.center,
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
                            child: FlatButton(minWidth: 300, height: 50, onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));},
                                child: Text('Подробнее', style: TextStyle(color: Colors.white, fontSize: 20.0))) ,
                          )

                        ]

                );
  }
}