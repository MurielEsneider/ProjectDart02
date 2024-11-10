import 'package:flutter/material.dart';
import 'package:flutter_application_02/screen/register.dart';

class menuOption extends StatefulWidget {
  const menuOption({super.key});

  @override
  State<menuOption> createState() => _menuOptionState();
}

class _menuOptionState extends State<menuOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 39, 33),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 1, 85, 67),
          foregroundColor: Colors.white,
          title: Text("Menu Opcion"),
        ),
        body: ListView(
          children: [
            SizedBox(height: 16),
            Image.network(
              "",
              height: 280,
              width: 280,
            ),
            SizedBox(height: 10),
            Card(
                child: ListTile(
              title: Text("Registro"),
              leading: Icon(Icons.account_circle_sharp),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => registerUser()));
              },
            )),
            Card(
                child: ListTile(
              title: Text("Login"),
              leading: Icon(Icons.add_card_outlined),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                
              },
            ))
          ],
        ));
  }
}
