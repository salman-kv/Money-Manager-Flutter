import 'package:flutter/material.dart';

Future<void> alerting(BuildContext context, String name) {
  return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text('do you want to $name'),
          actions:  [
            IconButton(onPressed: (){
              Navigator.of(context).pop();
            }, icon: const Icon(
              Icons.close,
              color: Colors.red,
            ),),
            IconButton(onPressed: (){
              snacks(context, name);
              Navigator.of(context).pop();
            }, icon:const Icon(
              Icons.check,
              color: Colors.green,
            )),
            
           
          ],
        );
      });
}

snacks(BuildContext context,String name){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(name)));
}