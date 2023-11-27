//Create stateless widget for list screen

import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.ads_click_sharp),
          title: const Text('click me 1 '),
          subtitle: const Text('click me 1'),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: const Text('This is alert dialog'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      ));
            },
          ),
          onTap: () {
            print('click me 1');
          },
        ),
        ListTile(
          leading: const Icon(Icons.ads_click_sharp),
          title: const Text('click me 2 '),
          subtitle: const Text('click me 2'),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {
              print('click me 2');
            },
          ),
          onTap: () {
            print('click me 2');
          },
        ),
      ],
    ));
  }
}
