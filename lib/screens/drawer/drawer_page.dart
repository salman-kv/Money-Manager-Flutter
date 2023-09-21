import 'package:flutter/material.dart';
import 'package:moneymanager/screens/drawer/deleted_screen.dart';
import 'package:moneymanager/screens/drawer/expense_screen.dart';
import 'package:moneymanager/screens/drawer/income_screen.dart';

class DrawerPage extends StatelessWidget {
  final TextTheme texTheme;
  const DrawerPage({required this.texTheme, super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.white,
      width: 350,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'MENU',
              style: TextStyle(
                fontFamily: 'irish',
                fontSize: 25,
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const IncomeScreen();
                }));
                // Navigator.of(context).pop();
                Scaffold.of(context).closeDrawer();
              },
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Income',
                  style: texTheme.titleLarge
                      ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const ExpenseScreen();
                }));
                // Navigator.of(context).pop();
                Scaffold.of(context).closeDrawer();
              },
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Expense',
                  style: texTheme.titleLarge
                      ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const DeletedScreen();
                }));
                // Navigator.of(context).pop();
                Scaffold.of(context).closeDrawer();
              },
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Deleted Transaction',
                  style: texTheme.titleLarge
                      ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
