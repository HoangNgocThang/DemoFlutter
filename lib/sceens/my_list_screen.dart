import 'package:flutter/material.dart';
import 'package:my_app/provider/config_server_provider.dart';
import 'package:provider/provider.dart';

import '../provider/movie_provider.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({Key? key}) : super(key: key);

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    final myList = context.watch<MovieProvider>().myList;
    final dataConfigServer = context.watch<ConfigServerProvider>().dataConfig;

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "My List (${myList.length}) Version: ${dataConfigServer.version} TimeLogout: ${dataConfigServer.timeLogout}"),
        titleTextStyle: const TextStyle(
            fontSize: 12, color: Colors.red, fontWeight: FontWeight.w600),
      ),
      body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (_, index) {
            final currentMovie = myList[index];
            return Card(
              key: ValueKey(currentMovie.title),
              elevation: 4,
              child: ListTile(
                title: Text(currentMovie.title),
                subtitle: Text(currentMovie.runtime ?? ''),
                trailing: TextButton(
                  child: const Text(
                    'Remove',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    context.read<MovieProvider>().removeFromList(currentMovie);
                  },
                ),
              ),
            );
          }),
    );
  }
}
