import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final String title;
  final String message;
  final String imagePath;
  final VoidCallback onPressedExpenses;
  final VoidCallback onPressedSales;
  final bool isExpensesSelected;

  const Transaction({
    required this.title,
    required this.message,
    required this.imagePath,
    required this.onPressedExpenses,
    required this.onPressedSales,
    required this.isExpensesSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).padding.top,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 380,
            height: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFF3E5FF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: onPressedExpenses,
                  child: Text(
                    'Expenses',
                    style: TextStyle(
                      color: isExpensesSelected ? const Color(0xFF8009E7) : Colors.grey[800],
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      decoration: isExpensesSelected ? TextDecoration.underline : TextDecoration.none,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: onPressedSales,
                  child: Text(
                    'Sales',
                    style: TextStyle(
                      color: isExpensesSelected ? Colors.grey[800] : const Color(0xFF8009E7),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      decoration: isExpensesSelected ? TextDecoration.none : TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
