import 'package:flutter_bloc/flutter_bloc.dart';

class Expense {
  final String name;
  final String date;
  final double amount;
  final String status;

  Expense({
    required this.name,
    required this.date,
    required this.amount,
    required this.status,
  });
}

abstract class ExpenseState {}

class ExpenseLoadingState extends ExpenseState {}

class ExpenseLoadedState extends ExpenseState {
  final List<Expense> expenses;

  ExpenseLoadedState(this.expenses);
}

class ExpenseErrorState extends ExpenseState {}

class ExpenseCubit extends Cubit<ExpenseState> {
  ExpenseCubit() : super(ExpenseLoadingState());

  void fetchExpenses() {
    try {

      final List<Expense> expenses = [
        Expense(name: 'Automobiles', date: 'April 04, 2024 05:32 am', amount: 125.00, status: 'Paid in full'),
      ];
      emit(ExpenseLoadedState(expenses));
    } catch (_) {
      emit(ExpenseErrorState());
    }
  }
}
