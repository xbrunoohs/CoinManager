// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(63, 63, 63, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(63, 63, 63, 1),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '../../assets/images/coinManagerICO.png', 
                width: 500, 
                height: 250, 
              ),
              SizedBox(height: 100),
              Text(
                'Coin Manager',
                style: TextStyle(
                    color: Color.fromRGBO(63, 188, 171, 1),
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  filled: true, 
                  fillColor: Colors.white, 
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  filled: true, 
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;

                  //lógica de login
                  if (email.isNotEmpty && password.isNotEmpty) {
                    print('Email: $email');
                    print('Senha: $password');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Login realizado com sucesso!',
                            style: TextStyle(
                                color: Color.fromRGBO(63, 63, 63, 1))),
                        backgroundColor: Color.fromRGBO(63, 188, 171, 1)),          
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashboardScreen()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Por favor, preencha todos os campos!',
                            style: TextStyle(
                                color: Color.fromRGBO(63, 63, 63, 1))),
                        backgroundColor: Color.fromRGBO(63, 188, 171, 1)),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromRGBO(63, 188, 171, 1), 
                  minimumSize: Size(500, 60), 
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(12),
                  ),
                ),
                child: Text('Login',
                    style: TextStyle(color: Color.fromRGBO(63, 63, 63, 1))),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // placeholder
                  print('Botão de cadastro pressionado');
                },
                child: Text('Não tem uma conta? Cadastre-se',
                    style: TextStyle(color: Color.fromRGBO(63, 188, 171, 1))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
