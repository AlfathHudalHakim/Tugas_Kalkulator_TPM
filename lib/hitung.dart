import 'package:flutter/material.dart';

class Op extends StatefulWidget{
  @override
  _OpState createState() => _OpState();
}

class _OpState extends State<Op> {
  int a=0;
  int b=0;
  int hasil=0;

  void tambah() {
    setState(() {
      hasil = a + b;
    });
  }

  void kurang(){
    setState(() {
      hasil = a - b;
    });
  }
  @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Kalkulator'),
    ),
    body: SafeArea(
    child: Column(
    children: [
    SizedBox(height: 20),
    Center(
    child: TextFormField(
      onChanged: (txt){
        setState(() {
          a = int.parse(txt);
        });
      },
      decoration: InputDecoration(
        labelText: 'Angka 1',
        border: OutlineInputBorder(),
      ),
    ),
    ),
      SizedBox(height: 20),
    Center(
    child: TextFormField(
      onChanged: (txt){
        setState(() {
          b = int.parse(txt);
        });
      },
      decoration: InputDecoration(
        labelText: 'Angka 2',
        border: OutlineInputBorder(),
      ),
    ),

    ),
      SizedBox(height: 20),
      Row(
        children: [
          SizedBox(width: 100),
          SizedBox(
            height: 80,
            width: 100,
            child:
            ElevatedButton(
                onPressed: tambah
                , child: Text(" + ")),
          ),

          SizedBox(width: 20),
          SizedBox(
            height: 80,
            width: 100,
            child: ElevatedButton(
                onPressed: kurang
                , child: Text(" - ")),
          ),
        ],
      ),
      SizedBox(height: 50),
      Center(
        child: SizedBox(
          height: 180,
          child: Text("$hasil",
          style: TextStyle(
            fontSize: 50
          ),),
        ),
      )


    ],

    ),
    ),
    );
    }
}

