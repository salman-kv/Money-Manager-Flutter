import 'package:flutter/material.dart';
import 'package:moneymanager/screens/account_screen/alert.dart';
import 'package:moneymanager/screens/privacy_policy/privacy_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'SALMAN K V',
                    style: _textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      'Clear All : ',
                      style: _textTheme.titleMedium,
                    ),
                    IconButton(
                        onPressed: () {
                          alerting(context, 'Clear');
                        },
                        icon: const Icon(Icons.delete)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Logout : ',
                      style: _textTheme.titleMedium,
                    ),
                    IconButton(
                        onPressed: () {
                          alerting(context, 'log out');
                        },
                        icon: const Icon(
                          Icons.logout_outlined,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return const PrivacyScreen();
            }));
          },
          child: Text(
            'Privacy Policy',
            textAlign: TextAlign.center,
            style: _textTheme.titleMedium?.copyWith(
                color: Colors.red, decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
