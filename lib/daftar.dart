import 'package:flutter/material.dart';

class Daftar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil kelompok'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text("Nama Anggota Kelompok : "),

            ),
            Center(
                child: Text("1. Alfath Hudal Hakim")
            ),
            Center(
                child: Text("2. Fridolin Barudo Ristrian Aji")
            )

          ],

        ),
      ),
    );
  }

}