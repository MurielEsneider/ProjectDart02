import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  //Lógica
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //Función para obtener los datos guardados en SharedPreferences
  Future<void> _login() async {
    final varPref = await SharedPreferences.getInstance();
    String? savedEmail = varPref.getString('userCorreo');
    String? savedPassword = varPref.getString('userPassword');

    if (savedEmail == _emailController.text.trim() && savedPassword == _passwordController.text.trim()) {
      // Si el correo ingresado coincide con el guardado muestra un mensaje de bienvenida
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Bienvenido $savedEmail')),
      );
    } else {
      // Si no coincide
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ocurrió un problema al ingresar los datos...')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text("Inicio de sesión"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Iniciar sesión...",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue[300],
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _login();
              },
              child:
                  Text('Iniciar Sesión', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}