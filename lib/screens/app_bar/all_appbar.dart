import 'package:flutter/material.dart';

class AllAppbar extends StatelessWidget implements PreferredSizeWidget {
  final headname;
  const AllAppbar({this.headname, super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    // TextTheme _textTheme=Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      height: 50,
      child: Stack(
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                weight: 50,
              )),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                headname,
                style:const TextStyle(
                  fontFamily: 'irish',
                  fontSize: 25,
                  fontWeight:FontWeight.w500,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
