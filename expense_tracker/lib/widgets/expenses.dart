import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expenses.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Pizza Party",
      amount: 3200,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Petrol for Motorbike",
      amount: 1000,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: "New Laptop: HP",
      amount: 20000,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text("The Chart"),
        Expanded(
          child: ExpenseList(_registeredExpenses),
        ),
      ]),
    );
  }
}
