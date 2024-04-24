import 'package:flutter/material.dart';
import 'package:rekoda_app/features/Transactions/add_sales.dart';
import 'expenses.dart';
import 'transaction.dart';
import 'custom_bottom_navigation_bar.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  bool isExpensesSelected = false;

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
        title: 'Sales',
        message: 'You haven’t logged any sales.',
        imagePath: 'assets/receipt.png',
        onPressedExpenses: () {
          setState(() {
            isExpensesSelected = true;
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Expenses()),
          );
        },
        onPressedSales: () {
          setState(() {
            isExpensesSelected = false;
          });
        },
        isExpensesSelected: isExpensesSelected,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddSales()), // Navigate to AddExpense screen
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
