import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';

class gmbr_scrn extends StatefulWidget {
  const gmbr_scrn({super.key});

  @override
  State<gmbr_scrn> createState() => _gmbr_scrnState();
}

class _gmbr_scrnState extends State<gmbr_scrn> {
  String? namaGame;
  final player = AudioPlayer();
  gantinama(String inputNama) {
    setState(() {
      namaGame = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaGame ?? "gambar game"),
        backgroundColor: Color.fromARGB(255, 255, 145, 145),
      ),
      body: GridView.count(
        crossAxisCount: 7,
        children: [
          Card(child: Image.asset("asset_media/gambar/mw 2.jpg")),
          GestureDetector(
            onTap: () async {
              gantinama("fifa 23");
              await player.setAsset("asset_media/suara/oh-ma-gaud-vine.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset("asset_media/gambar/3788213003.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () async {
              gantinama("kratos");
              await player.setAsset(
                  "asset_media/suara/god-of-war---kratos---boy-made-with-Voicemod.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset("asset_media/gambar/gow ragnarok.jpg"),
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
