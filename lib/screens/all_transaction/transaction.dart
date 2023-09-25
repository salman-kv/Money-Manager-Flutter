import 'package:flutter/material.dart';
import 'package:moneymanager/screens/all_transaction/all_transaction_screen.dart';
import 'package:moneymanager/screens/app_bar/all_appbar.dart';
import 'package:moneymanager/screens/all_transaction/deleted_screen.dart';
import 'package:moneymanager/screens/all_transaction/expense_screen.dart';
import 'package:moneymanager/screens/all_transaction/income_screen.dart';

class AllTransactionScreen extends StatefulWidget {
  const AllTransactionScreen({super.key});

  @override
  State<AllTransactionScreen> createState() => _AllTransactionState();
}

class _AllTransactionState extends State<AllTransactionScreen> with SingleTickerProviderStateMixin{
   late final TabController _controller = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme=Theme.of(context).textTheme;
    return SafeArea(child: Scaffold(
      appBar:const AllAppbar(headname: 'All Transaction'),
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
          children: const [
       AllTransaction(),
        IncomeScreen(),
        ExpenseScreen(),
        DeletedScreen()
        ]),
      ),
    ));
  }
}