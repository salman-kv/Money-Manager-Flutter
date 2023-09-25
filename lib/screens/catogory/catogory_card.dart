import 'package:flutter/material.dart';
import 'package:moneymanager/screens/account_screen/alert.dart';
import 'package:moneymanager/theme/theme_constants.dart';

class CatogoryCard extends StatelessWidget {
  final TextTheme textTheme;
  const CatogoryCard({required this.textTheme, super.key});

  @override
  Widget build(BuildContext context) {
    var _textTheme = textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: containerColor,
        ),
        height: 70,
        child: Row(
          children: [
            Text('Target', style: _textTheme.titleLarge),
            const Spacer(),
            IconButton(
              onPressed: () {
                alerting(context, 'edit');
              },
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {
                alerting(context, 'delete');
              },
              icon: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
