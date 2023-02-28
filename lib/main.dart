import 'package:flutter/material.dart';
import 'afterlogin.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'tugas2 TPM',
    theme: ThemeData(
      primarySwatch: Colors.blueGrey
    ),
    home: Kalkulator(),
  ));
}

TextEditingController getEmail = new TextEditingController();
TextEditingController getPassword = new TextEditingController();

class Kalkulator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: Image.asset("assets/image/logo.png",
                  height: 200,
                  width: 200),
            ),
            SizedBox(height: 60),
           TextFormField(
             controller: getEmail,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.account_circle_outlined,
    ),
              hintText: 'email@gmail.com',
  ),
),
            SizedBox(height: 20),
            TextFormField(
              controller: getPassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.assignment,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String email = 'alfath@gmail.com';
                  String password = 'qwerty';
                  if(getEmail.text == email && getPassword.text == password){
                    Route route = MaterialPageRoute(builder: (context) => AfterLogin());
                    Navigator.push(context, route);
                  }
            }
                , child: Text("Login"))
          ],
        ),
      ),
    );
  }

}
