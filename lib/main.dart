import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'kalkulatorscreen.dart';
import 'list_screen.dart';
import 'tugas_gambar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListScreen(),
    );
  }
}

class beranda extends StatelessWidget {
  const beranda({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 193, 7),
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('selamat datang',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: '215000E',
                )),
          ),
          Row(
            children: [
              Text('budi'),
              Text('budi'),
            ],
          ),
          SizedBox(
            width: 400,
            height: 400,
            child: Image.network(
              'https://images.unsplash.com/photo-1565035010268-a3816f98589a?q=80&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
        ],
      ),
    );
  }
}
