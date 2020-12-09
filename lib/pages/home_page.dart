import 'package:first_flutter_app/Widgets/item_card.dart';
import 'package:first_flutter_app/models/history.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final historyData = Provider.of<HistoryData>(context);

    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[

            Container(
              child: ListTile(
                title: Text(
                    "Истории",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold)
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(4.0),
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: historyData.items.length,
                  itemBuilder: (context, int index) => ChangeNotifierProvider.value(value: historyData.items[index], child: ItemCard())
              ),
            )
          ],
        )
      ),
    );
  }
}