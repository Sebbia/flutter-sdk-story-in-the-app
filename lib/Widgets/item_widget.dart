import 'package:app_story/Models/history_data.dart';
import 'package:app_story/Pages/history_view_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final history = Provider.of<History>(context, listen: false);

    return Container(
        width: 100,
        margin: const EdgeInsets.all(5.0),

        child: Column(

            children: <Widget>[

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[

                  ClipOval(

                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(history.imgUrl),
                              fit: BoxFit.cover
                          ),
                          shape: BoxShape.circle
                      ),

                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryView()));

                          },
                        child: null,
                      ),
                    ),
                  ),

                  Container(
                      alignment: Alignment.bottomCenter,
                      child: Text('${history.title}', style: TextStyle(fontSize: 14.5))
                  )

                ],
              ),
            ]
        )
    );
  }
}