import 'package:flutter/material.dart';
import 'package:moneymanager/screens/account_screen/alert.dart';
import 'package:moneymanager/screens/common_widget/search.dart';
import 'package:moneymanager/screens/all_transaction/edit_transaction.dart';
import 'package:moneymanager/theme/theme_constants.dart';

class IncomeCard extends StatelessWidget {
  final textTheme;

  const IncomeCard({required this.textTheme, super.key});

  @override
  Widget build(BuildContext context) {
    // final _textTheme = textTheme;
    return Column(
      children: [
        const Search(),
        Expanded(
            child: ListView(
          children: [
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
            incomeCard(context),
          ],
        ))
      ],
    );
  }

  Widget incomeCard(BuildContext context) {
    final _textTheme = textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onLongPress: () {
          longpress(context);
        },
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 141, 141, 141),
                blurRadius: 4,
                offset: Offset(0, 1),
                blurStyle: BlurStyle.normal,
              )
            ],
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: containerColor,
          ),
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromARGB(138, 200, 230, 201),
                ),
                margin: const EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '10',
                      style: _textTheme.bodyLarge,
                    ),
                    Text(
                      'JAN',
                      style: _textTheme.bodyLarge,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Target', style: _textTheme.titleLarge),
                  Text(
                    ' the purpose ',
                    style: _textTheme.titleSmall,
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text('₹2000',
                        style: _textTheme.titleLarge?.copyWith(
                          color: Colors.black,
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> longpress(BuildContext context) {
  return showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: const Text(
            'Edit or Delete',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () async{
                 await Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                    return const EditTransactionScreen();
                  }));
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pop();
                  
                },
                icon: const Icon(
                  Icons.edit,
                )),
            IconButton(
                onPressed: () async{
                 await alerting(context, 'delete');
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pop();
                  
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
          ],
        );
      }));
}
