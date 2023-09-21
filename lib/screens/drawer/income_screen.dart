import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moneymanager/screens/app_bar/all_appbar.dart';
import 'package:moneymanager/screens/drawer/drawer_card_widget/income_card.dart';
import 'package:moneymanager/screens/drawer/filter_widget.dart';
// import 'package:moneymanager/app_bar/custom_appbar_main.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    TextTheme _textTheme=Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        // appBar: AllAppbar(
        //   headname: 'INCOME',
        // ),
        body: IncomeCard(textTheme: Theme.of(context).textTheme),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bottemSort(context, size, _textTheme);
          },
          backgroundColor: Colors.black,
          child: const FaIcon(FontAwesomeIcons.sort),
        ),
      ),
    );
  }
}
