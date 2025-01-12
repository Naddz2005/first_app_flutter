import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_first_project/main.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    if (appState.favorite.isEmpty) {
      return Center(
        child: Text("No favorites yet."),
      );
    }
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text("You have ${appState.favorite.length} favorites:"),
        ),
        for (var pair in appState.favorite)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          )
      ],
    );
  }
}
