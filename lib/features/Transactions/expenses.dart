import 'package:flutter/material.dart';
import 'sales.dart';
import 'transaction.dart';
import 'custom_bottom_navigation_bar.dart';
import 'add_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  bool isExpensesSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Transactions',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Transaction(
        title: 'Expenses',
        message: 'You haven’t logged any expense.',
        imagePath: 'assets/receipt.png',
        onPressedExpenses: () {
          setState(() {
            isExpensesSelected = true;
          });
        },
        onPressedSales: () {
          setState(() {
            isExpensesSelected = false;
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Sales()),
          );
        },
        isExpensesSelected: isExpensesSelected,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddExpense()),
          );
        },
        backgroundColor: const Color(0xFF680DB3),
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
