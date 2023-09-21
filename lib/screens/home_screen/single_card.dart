import 'package:flutter/material.dart';
import 'package:moneymanager/theme/theme_constants.dart';
import 'dart:math';

class SingleCard extends StatefulWidget {
  final TextTheme textTheme;
  const SingleCard({required this.textTheme, super.key});

  @override
  State<SingleCard> createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  final List<Widget> _list = [];

  @override
  void initState() {
    for (var i = 0; i < 20; i++) {
      _list.add(singleCard(i));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 1 / 1.5,
      crossAxisCount: 3,
      children: List.generate(_list.length, (index) {
        return Dismissible(
          key: UniqueKey(),
          child: _list[index],
          onDismissed: (direction) {
            if (direction == DismissDirection.endToStart) {
              setState(() {
                _list.removeAt(index);
              });
            } else {
              setState(() {});
            }
          },
        );
      }),
    );
  }

  Widget singleCard(int i) {
    TextTheme _textTheme = widget.textTheme;
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 0, 0, 0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'salary',
            style: _textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Text(
            '₹${Random().nextInt(10000)}',
            style: _textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(214, 255, 255, 255)),
          ),
          Center(
              child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: i % 2 == 0
                  ? const Color.fromARGB(138, 200, 230, 201)
                  : const Color.fromARGB(49, 195, 103, 69),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${Random().nextInt(30) + 1}',
                  style: _textTheme.bodyLarge?.copyWith(
                      color: i % 2 != 0
                          ? const Color.fromARGB(135, 255, 255, 255)
                          : Colors.black),
                ),
                Text(
                  'JAN',
                  style: _textTheme.bodyLarge?.copyWith(
                      color: i % 2 != 0
                          ? const Color.fromARGB(135, 255, 255, 255)
                          : Colors.black),
                ),
              ],
            ),
          )),
          Center(
            child: i % 2 == 0
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'icons/income.png',
                      color: incomeColor,
                    ),
                  )
                : SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'icons/expense.png',
                      color: expenseColor,
                    ),
                  ),
          ),
          SizedBox(
            width: double.infinity,
            child: i % 2 == 0
                ? Text(
                    'Income',
                    textAlign: TextAlign.center,
                    style: _textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500, color: incomeColor),
                  )
                : Text(
                    'Expense',
                    textAlign: TextAlign.center,
                    style: _textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500, color: expenseColor),
                  ),
          ),
        ],
      ),
    );
  }
}
