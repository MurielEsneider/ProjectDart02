import 'package:flutter/material.dart';

class registerUser extends StatefulWidget {
  const registerUser({super.key});

  @override
  State<registerUser> createState() => _registerUserState();
}

class _registerUserState extends State<registerUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1, 85, 67, 1),
        foregroundColor: Colors.white,
        title: Text("Registro de usuario"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
              child: Column(
            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/149/149071.png",
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20),
              Text("Registrate para continuar"),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nombre Completo",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Correo",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email no válido...';
                  }
                  return null; // si no hay error en el ingreso del correo
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Confirma tu contraseña",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text("¿Ya tienes cuenta?"),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "REGISTRARSE",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(1, 85, 67, 1),
                    foregroundColor: Colors.white),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
