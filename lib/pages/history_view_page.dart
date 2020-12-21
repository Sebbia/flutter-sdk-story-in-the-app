import 'dart:ui';
import 'package:app_story/Models/history_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HistoryView extends StatelessWidget {
  HistoryView({Key key}) : super(key: key);

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final history = Provider.of<HistoryData>(context, listen: false);

    return PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller,
        itemCount: history.items.length,
        itemBuilder: (context, int index) => ChangeNotifierProvider.value(value: history.items[index], child: Screen(),),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final master = Provider.of<History>(context, listen: false);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('${master.titleUrl}'),
            fit: BoxFit.cover
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            //Progress bar
            Container(
                //padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
                child: LinearPercentIndicator(
                    animation: true,
                    animationDuration: 5000,
                    percent: 1,
                    backgroundColor: Colors.white.withOpacity(0.5),
                    progressColor: Colors.white,
                  ),
            ),

            //Кнопка закрытия истории *
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.close, size: 20,
                          color: Colors.white /*.withOpacity(0.75)*/)
                  ),
                ],
            ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text('${master.textTitle}', style: TextStyle(
                          color: Colors.black, fontSize: 25.0)),

                  Text('${master.text}',
                          style: TextStyle(color: Colors.black, fontSize: 15.0))
                ]
            ),

            /*GestureDetector(
              onLongPress: () => Navigator.of(context).pop(),
            ),*/

            //Кнопка 'Побробнее'
            if((master.buttonText != null) && (master.buttonUrl != null)) (
                Container(
                  alignment: Alignment.topLeft,
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),

                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      FlatButton(height:50,minWidth:300, onPressed: () => {launch(master.buttonUrl)}, child: Text('${master.buttonText}',

                          style: TextStyle(color: Colors.white, fontSize: 20.0))
                      )
                    ],
                  ),
                )
            )

          ],

      ),
    );
  }
}