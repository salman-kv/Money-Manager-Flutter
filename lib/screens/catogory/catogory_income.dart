import 'package:flutter/material.dart';
import 'package:moneymanager/screens/catogory/add_catogory.dart';
import 'package:moneymanager/screens/catogory/catogory_card.dart';
import 'package:moneymanager/screens/common_widget/search.dart';
import 'package:moneymanager/theme/theme_constants.dart';

class CatogoryIncome extends StatefulWidget {
  const CatogoryIncome({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CatogoryIncome>
    with SingleTickerProviderStateMixin {
  late final TabController _controller = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        onTap: (value) {
          setState(() {});
        },
        controller: _controller,
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
          width: 3,
          color: _controller.index == 0 ? incomeColor : expenseColor,
        )),
        indicatorColor: _controller.index == 0 ? incomeColor : expenseColor,
        tabs: [
          Tab(
            child: Text(
              'INCOME',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: incomeColor),
            ),
          ),
          Tab(
            child: Text(
              'EXPENSE',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: expenseColor),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Search(),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: [
                ListView(
                  children: [
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                  ],
                ),
                ListView(
                  children: [
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                    CatogoryCard(textTheme: Theme.of(context).textTheme),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return const AddCatogory();
          }));
        },
        backgroundColor: _controller.index == 0 ? incomeColor : expenseColor,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
