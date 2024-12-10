// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard.dart';
import 'package:flutter_application_1/screens/expense_list_screen.dart';


class AddExpenseScreen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(63, 63, 63, 1), 
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(63, 63, 63, 1), 
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
          'Adicionar Despesa',
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
        ]  
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(63, 188, 171, 1),
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
              SizedBox(height: 24),
              _buildInputField(
                controller: titleController,
                label: 'Título',
              ),
              SizedBox(height: 16),
              _buildInputField(
                controller: priceController,
                label: 'Preço',
              ),
              SizedBox(height: 16),
              _buildInputField(
                controller: descriptionController,
                label: 'Descrição',
              ),
              SizedBox(height: 16),
              _buildInputField(
                controller: dateController,
                label: 'Data',
              ),
              SizedBox(height: 50),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExpenseScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(63, 188, 171, 1),
                    minimumSize: Size(500, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Registrar',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String label,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
