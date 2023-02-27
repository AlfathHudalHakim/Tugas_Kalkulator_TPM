import 'package:flutter/material.dart';
import 'daftar.dart';
import 'hitung.dart';

class AfterLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: SafeArea(

        child: Center(
          child: Row(
            children: [
              SizedBox(width: 100),
              SizedBox(
                height: 80,
                width: 100,
                child:
                ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => Daftar());
                      Navigator.push(context, route);
                    }
                    , child: Text("Profil")),
              ),

              SizedBox(width: 20),
              SizedBox(
                height: 80,
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => Op());
                      Navigator.push(context, route);
                    }
                    , child: Text("Kalkulator")),
              )

            ],
          ),
        ),
      ),
    );
  }

}