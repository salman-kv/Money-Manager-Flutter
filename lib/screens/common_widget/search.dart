import 'package:flutter/material.dart';
import 'package:moneymanager/theme/theme_constants.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: incomeColor)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black)),
              hintText: 'Search',
              hintStyle: const TextStyle(
                  color: Color.fromARGB(105, 0, 0, 0), fontSize: 16),
              suffixIcon: const Icon(Icons.search),
              suffixIconColor: incomeColor),
        ),
      ),
    );
  }
}
