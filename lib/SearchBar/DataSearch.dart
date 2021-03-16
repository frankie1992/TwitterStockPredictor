import 'package:flutter/material.dart';
import 'package:stock_prediction_and_analysis/StockDetails/StockDetailsPage.dart';

class DataSearch extends SearchDelegate<String>{

  // TODO[Rickhouse]: Use Firebase/API values for these
  final indexes = [
    "GMC",
    "AMC",
    "AAPL",
    "VOO",
    "QQQ"
  ];

  final recentIndexes = [
    "AMC"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for app bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: (){
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    return StockDetailsPage();
  }

  // TODO [Rickhouse]: Get list of top stocks
  @override
  Widget buildSuggestions(BuildContext context) {
    // shows suggestions
    final suggestions = query.isEmpty ? recentIndexes : indexes.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
        itemBuilder: (context, index) => ListTile(
          onTap: (){
            showResults(context);
          },
          leading: Icon(Icons.location_city),
          title: RichText(
            text: TextSpan(
              text: suggestions[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: suggestions[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
              ]),
            ),
          ),
      itemCount: suggestions.length,
    );
  }
}