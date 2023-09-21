import 'package:flutter/material.dart';
import 'package:moneymanager/screens/graph/graph_screen.dart';
import 'package:moneymanager/theme/theme_constants.dart';

bottemSort(BuildContext context, Size size, TextTheme _textTheme) {
  return showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return SizedBox(
          height: size.height / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Row(
                  //   children: [
                  //     Text('Amount : ', style: _textTheme.titleLarge),
                  //     Row(
                  //       children: [
                  //         Radio(value: 3, groupValue: 1, onChanged: (val) {}),
                  //         Text(
                  //           'high to low',
                  //           style: _textTheme.titleMedium,
                  //         ),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Radio(value: 2, groupValue: 1, onChanged: (val) {}),
                  //         Text(
                  //           'Low to high',
                  //           style: _textTheme.titleMedium,
                  //         ),
                  //       ],
                  //     ),
                  //     Row(
                  //       children: [
                  //         Radio(value: 1, groupValue: 1, onChanged: (val) {}),
                  //         Text(
                  //           'Non',
                  //           style: _textTheme.titleMedium,
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Start : ',
                          style: _textTheme.titleLarge,
                        ),
                        const DateSort(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'End : ',
                          style: _textTheme.titleLarge,
                        ),
                        const DateSort(),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              backgroundColor: incomeColor),
                          child: const Text('ADD')),
                    ),
                  ],
                ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text('date : ', style: _textTheme.titleLarge),
              //    const FilterDate(),
              //   ],
              // ),
              // Container(
              //   width: double.infinity,
              //   padding: const EdgeInsets.symmetric(horizontal: 30),
              //   child: ElevatedButton(
              //       onPressed: () {},
              //       style: ElevatedButton.styleFrom(
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(30)),
              //           backgroundColor: incomeColor),
              //       child: const Text('ADD')),
              // ),
            ],
          ),
        );
      });
}

class FilterDate extends StatefulWidget {
  const FilterDate({super.key});

  @override
  State<FilterDate> createState() => _FilterDateState();
}

class _FilterDateState extends State<FilterDate> {
  DateTime? _dateTime;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        _dateTime = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime.now());
        setState(() {});
      },
      icon: const Icon(Icons.calendar_month_outlined),
      label: _dateTime == null
          ? const Text('select')
          : Text(
              '${_dateTime?.day} - ${_dateTime?.month} - ${_dateTime?.year}',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
    );
  }
}
