import 'package:flutter/material.dart';

Future<void> alerting(BuildContext context, String name) {
  return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text('do you want to $name'),
          actions: const [
            Icon(
              Icons.close,
              color: Colors.red,
            ),
            Icon(
              Icons.check,
              color: Colors.green,
            )
          ],
        );
      });
}
