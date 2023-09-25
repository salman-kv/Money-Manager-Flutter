import 'package:flutter/material.dart';
import 'package:moneymanager/theme/theme_constants.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownvalue = '1';
  DateTime? _dateTime;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Form(
                child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        label: Text('Purpose'),
                        labelStyle:
                            TextStyle(color: Color.fromARGB(112, 0, 0, 0)),
                        filled: true,
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        label: Text('Amount'),
                        labelStyle:
                            TextStyle(color: Color.fromARGB(112, 0, 0, 0)),
                        filled: true,
                        border: InputBorder.none),
                  ),
                ),
                TextButton.icon(
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Radio(value: 1, groupValue: 1, onChanged: (val) {}),
                        const Text('INCOME')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: 2, groupValue: 1, onChanged: (val) {}),
                        const Text(
                          'EXPENSE',
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'CATOGORY :',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 219, 219, 219),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: DropdownButton(
                            style: const TextStyle(
                                color: Colors.black, fontSize: 17),
                            value: dropdownvalue,
                            items: [
                              DropdownMenuItem(
                                  onTap: () {
                                    setState(() {
                                      dropdownvalue = '1';
                                    });
                                  },
                                  value: '1',
                                  child: const Text('salary')),
                              DropdownMenuItem(
                                  onTap: () {
                                    setState(() {
                                      dropdownvalue = '2';
                                    });
                                  },
                                  value: '2',
                                  child: const Text('rent')),
                              DropdownMenuItem(
                                  onTap: () {
                                    setState(() {
                                      dropdownvalue = '3';
                                    });
                                  },
                                  value: '3',
                                  child: const Text('sales')),
                            ],
                            onChanged: (val) {}),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
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
            )),
          ],
        ));
  }
}
