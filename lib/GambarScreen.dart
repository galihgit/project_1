import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class gambarScreen extends StatelessWidget {
  const gambarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gmbr screen'),
        backgroundColor: Color.fromARGB(255, 255, 145, 145),
      ),
      body: GridView.count(
        crossAxisCount: 7,
        children: [
          Card(child: Image.asset("asset_media/gambar/mw 2.jpg")),
          GestureDetector(
            onTap: () {
              print("fifa 23");
            },
            child: Card(
              child: Image.asset("asset_media/gambar/3788213003.jpg"),
            ),
          ),
          Card(
            child: Image.asset("asset_media/gambar/nfs unbound.jpg"),
          ),
          Card(
            child:
                Image.asset("asset_media/gambar/GTA_V_Cover_PC-653-1920.jpg"),
          ),
          Card(
            child: Image.asset(
                "asset_media/gambar/702827-cyberpunk-2077-playstation-4-front-cover.jpg"),
          ),
          Card(
            child: Image.asset("asset_media/gambar/gow ragnarok.jpg"),
          ),
          Card(
            child: Image.asset("asset_media/gambar/naraka balde point.jpg"),
          ),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
        ],
      ),
    );
  }
}
