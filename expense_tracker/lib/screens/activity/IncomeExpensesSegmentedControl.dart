import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncomeExpensesSegmentedControl extends StatefulWidget {
  const IncomeExpensesSegmentedControl({Key? key}) : super(key: key);

  @override
  _IncomeExpensesSegmentedControlState createState() =>
      _IncomeExpensesSegmentedControlState();
}

class _IncomeExpensesSegmentedControlState
    extends State<IncomeExpensesSegmentedControl> {
  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transactions')),
      body: Column(
        children: [
          const SizedBox(height: 16),
          CupertinoSegmentedControl<int>(
            children: const {
              0: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Income'),
              ),
              1: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Expenses'),
              ),
            },
            onValueChanged: (int newValue) {
              setState(() {
                _selectedSegment = newValue;
              });
            },
            groupValue: _selectedSegment,
          ),
          const SizedBox(height: 16),
          Expanded(
            // Show different widgets based on which segment is selected
            child: _selectedSegment == 0
                ? const IncomeView()
                : const ExpensesView(),
          ),
        ],
      ),
    );
  }
}

class IncomeView extends StatelessWidget {
  const IncomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Income Data'));
  }
}

class ExpensesView extends StatelessWidget {
  const ExpensesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Expenses Data'));
  }
}