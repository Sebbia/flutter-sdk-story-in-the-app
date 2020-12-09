import 'dart:async';
import 'package:first_flutter_app/Widgets/item_card.dart';
import 'package:first_flutter_app/models/history.dart';
import 'package:first_flutter_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final history = Provider.of<History>(context);
    double  _initial = 0.0;

    void update(){Timer.periodic(Duration(seconds: 1),(timer){_initial = _initial + 0.2;});}

    update();
    return Container(
          child: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/922379/pexels-photo-922379.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                  fit: BoxFit.cover
                ),
            ),

            child: Column(
              children: <Widget>[

                //Progress bar
                Container(
                  margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
                    child: LinearProgressIndicator(
                      value: _initial,
                      valueColor: AlwaysStoppedAnimation<Color>
                        (Colors.grey),
                    )
                ),

                //Кнопка закрытия истории
                Container(
                  padding: EdgeInsets.only(left: 340),
                    child: FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));}, child:Icon(Icons.close, size: 20)),
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

                  child: FlatButton(minWidth: 300, height: 50, onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));}, child: Text('Подробнее', style: TextStyle(color: Colors.white, fontSize: 20.0))) ,
                ),
              ],
            ),
          )
    );
  }
}