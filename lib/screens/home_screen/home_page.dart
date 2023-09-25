import 'package:flutter/material.dart';
import 'package:moneymanager/screens/common_widget/search.dart';
import 'package:moneymanager/screens/all_transaction/transaction.dart';
import 'package:moneymanager/screens/home_screen/single_card.dart';

import 'package:moneymanager/screens/home_screen/target_widget.dart';
import 'package:moneymanager/screens/home_screen/total_income_expense.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _search = false;

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TargetWidget(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'TOTAL',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _search ? _search = false : _search = true;
                    });
                  },
                  child: const Icon(
                    Icons.search,
                    size: 30,
                  )),
            ],
          ),
          Visibility(visible: _search, child: const Search()),
          const SizedBox(
            height: 5,
          ),
          const TotalIncomeExpense(),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Transaction',
                style: _textTheme.titleMedium
                    ?.copyWith(color: const Color.fromARGB(255, 123, 121, 121)),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const AllTransactionScreen();
                    }));
                  },
                  child: const Text('See All'))
            ],
          ),
          // const SizedBox(
          //   height: 5,
          // ),
          SingleCard(
            textTheme: Theme.of(context).textTheme,
          ),
        ],
      ),
    );
  }
}
