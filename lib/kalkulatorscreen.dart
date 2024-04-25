import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  TextEditingController angka1Controller = TextEditingController();
  TextEditingController angka2Controller = TextEditingController();
  TextEditingController angka3Controller = TextEditingController();
  String hasil = "hasil kosong";
  String hasil2 = "hasil kosong";
  String hasil3 = "hasil kosong";
  String? nilaiakhirhuruf;
  double? nilairatarata;
  int? nilaitugas;
  int? nilaiuts;
  int? nilaiuas;

  hitungNilai() {
    setState(() {
      int nilai1 = int.parse(angka1Controller?.text ?? "0");
      int nilai2 = int.parse(angka2Controller?.text ?? "0");
      int nilai3 = int.parse(angka3Controller?.text ?? "0");
      nilairatarata = (nilai1 + nilai2 + nilai3) / 3;

      konversiHuruf(nilairatarata ?? 0);
    });
  }

  konversiHuruf(double nilai) {
    if (nilai >= 85 && nilai <= 100) {
      nilaiakhirhuruf = "Nilai A, Pertahankan";
    } else if (nilai >= 70 && nilai <= 84) {
      nilaiakhirhuruf = "Nilai B, tingkatkan lagi";
    } else if (nilai >= 50 && nilai <= 69) {
      nilaiakhirhuruf = "Nilai c, ayo belajar";
    } else {
      nilaiakhirhuruf = "are u serious right now bruh";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai AKhir'),
        backgroundColor: Color.fromARGB(255, 114, 255, 236),
      ),
      body: Column(
        children: [
          Text(nilaiakhirhuruf ?? "Nilai AKhir"),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: angka1Controller,
            decoration: const InputDecoration(
              icon: Icon(Icons.numbers),
              hintText: 'Masukan Nilai Tugas',
              labelText: 'Tugas *',
            ),
            onSaved: (String? value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
          ),
          TextFormField(
            controller: angka2Controller,
            decoration: const InputDecoration(
              icon: Icon(Icons.numbers),
              hintText: 'Masukan Nilai UTS',
              labelText: 'UTS *',
            ),
            onSaved: (String? value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
          ),
          TextFormField(
            controller: angka3Controller,
            decoration: const InputDecoration(
              icon: Icon(Icons.numbers),
              hintText: 'Masukan Nilai UAS',
              labelText: 'UAS *',
            ),
            onSaved: (String? value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              hitungNilai();
            },
            child: Text('hitung nilai'),
          ),
          Text("nilai rata rata"),
          Text(nilairatarata?.toString() ?? "0")
        ],
      ),
    );
  }
}
