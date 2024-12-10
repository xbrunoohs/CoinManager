// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/expense_edit_screen.dart';
import 'package:flutter_application_1/screens/dashboard.dart';

class ExpenseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(63, 63, 63, 1),
      appBar: AppBar(
        backgroundColor: Color(0xFF404040),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardScreen()),
            );
          },
        ),
        title: Text(
          'Despesas',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: Color.fromRGBO(63, 63, 63, 1),
            child: Image.asset(
              '../../assets/images/coinManagerICO.png',
              width: 500,
              height: 250,
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFF63BCAB),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bruno H',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'R\$57,00',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: [
                _buildTransactionItem(
                    context: context,
                    date: '04/06',
                    description: 'Car fix',
                    amount: '-R\$30,00',
                    isPositive: false),
                _buildTransactionItem(
                    context: context,
                    date: '01/06',
                    description: 'Salary',
                    amount: '+R\$1500,00',
                    isPositive: true),
                _buildTransactionItem(
                    context: context,
                    date: '25/05',
                    description: 'Lunch',
                    amount: '-R\$50,00',
                    isPositive: false),
                _buildTransactionItem(
                    context: context,
                    date: '24/05',
                    description: 'Lunch',
                    amount: '-R\$50,00',
                    isPositive: false),
                _buildTransactionItem(
                    context: context,
                    date: '23/05',
                    description: 'Lunch',
                    amount: '-R\$50,00',
                    isPositive: false),
                _buildTransactionItem(
                    context: context,
                    date: '22/05',
                    description: 'Lunch',
                    amount: '-R\$50,00',
                    isPositive: false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem({
    required BuildContext context,
    required String date,
    required String description,
    required String amount,
    required bool isPositive,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                date,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              SizedBox(height: 4),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 1,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isPositive ? Colors.green : Colors.red,
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditExpenseScreen()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
