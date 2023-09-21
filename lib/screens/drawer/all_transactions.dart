import 'package:flutter/material.dart';
import 'package:moneymanager/screens/app_bar/all_appbar.dart';
import 'package:moneymanager/screens/drawer/deleted_screen.dart';
import 'package:moneymanager/screens/drawer/expense_screen.dart';
import 'package:moneymanager/screens/drawer/income_screen.dart';

class AllTransaction extends StatefulWidget {
  const AllTransaction({super.key});

  @override
  State<AllTransaction> createState() => _AllTransactionState();
}

class _AllTransactionState extends State<AllTransaction> with SingleTickerProviderStateMixin{
   late final TabController _controller = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme=Theme.of(context).textTheme;
    return SafeArea(child: Scaffold(
      appBar: AllAppbar(headname: 'All Transaction'),
      body: Scaffold(
        appBar:TabBar(
       indicatorColor: Colors.black,
          controller: _controller,
          tabs: [
          SizedBox(
            height:50,
            child: Center(child: Text('ALL',style: _textTheme.titleSmall,))),
          Text('INCOME',style: _textTheme.titleSmall),
          Text('EXPENSE',style: _textTheme.titleSmall),
          Text('DELETED',style: _textTheme.titleSmall),
        ]) ,
        body: TabBarView(
          controller: _controller,
          children: [
            DeletedScreen(),
        IncomeScreen(),
        ExpenseScreen(),
        DeletedScreen()
        ]),
      ),
    ));
  }
}