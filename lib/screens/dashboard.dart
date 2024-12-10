// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/expense_form_screen.dart';
import 'package:flutter_application_1/screens/expense_list_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3F3F3F),
      appBar: AppBar(
  backgroundColor: Color(0xFF404040),
  leading: IconButton(
    icon: Icon(Icons.logout, color: Colors.white),
    onPressed: () {
      // sair
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Confirmar Saída'),
          content: Text('Tem certeza que deseja sair?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()), 
                );
              },
              child: Text('Sair'),
            ),
          ],
        ),
      );
    },
  ),
  title: Text(
    'Dashboard',
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),

          // cabeçalho
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Color(0xFF63BCAB),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: EdgeInsets.symmetric(horizontal: 16),
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
          SizedBox(height: 30),

          // botões
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 35,
              mainAxisSpacing: 35,
              padding: EdgeInsets.all(30),
              children: [
                _buildDashboardButton(
                  icon: Icons.add_circle_outline,
                  label: 'Adicionar Despesa',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddExpenseScreen()), 
                    );
                  },
                ),
                _buildDashboardButton(
                  icon: Icons.list,
                  label: 'Histórico',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExpenseScreen()), 
                    );
                  },
                ),
                _buildDashboardButton(
                  icon: Icons.person,
                  label: 'Dados Pessoais',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardScreen()), 
                    );
                  },
                ),
                _buildDashboardButton(
                  icon: Icons.calendar_today,
                  label: 'Calendário',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardScreen()), 
                    );
                  },
                ),
                _buildDashboardButton(
                  icon: Icons.contact_mail,
                  label: 'Contato',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardScreen()), 
                    );
                  },
                ),
                _buildDashboardButton(
                  icon: Icons.settings,
                  label: 'Configurações',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardScreen()), 
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF63BCAB), 
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

