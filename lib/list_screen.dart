import 'package:flutter/material.dart';
import 'package:project_1/GambarScreen.dart';
import 'package:project_1/Gambar_screen.dart';
import 'package:project_1/kalkulatorscreen.dart';
import 'tugas_gambar.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menu'),
        backgroundColor: Color.fromARGB(255, 255, 145, 145),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => KalkulatorScreen(),
                ),
              );
            },
            child: Text('Nilai Akhir'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => gambar(),
                ),
              );
            },
            child: Text('card '),
          ),
        ],
      ),
    );
  }
}
