import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class gambar extends StatefulWidget {
  const gambar({Key? key}) : super(key: key);

  @override
  State<gambar> createState() => _gambarState();
}

class _gambarState extends State<gambar> {
  late final AudioPlayer player;
  String? namacard;
  String clickMessage = "Click on the card";

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  void playAudio(String assetPath) async {
    await player.setAsset(assetPath);
    await player.play();
  }

  void changeClickMessage(String message) {
    setState(() {
      clickMessage = message;
    });
  }

  Widget buildCard(String imagePath, String audioPath, String message) {
    return GestureDetector(
      onTap: () {
        playAudio(audioPath);
        changeClickMessage(message);
      },
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: Image.asset(
                imagePath,
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(namacard ?? "EXODIA"),
        backgroundColor: Color.fromARGB(255, 255, 145, 145),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCard(
                    "asset_media/gambar/exodia left leg.png",
                    "asset_media/suara/left leg of the forb.mp3",
                    "LEFT LEG OF THE FORBIDDEN ONE"),
                buildCard(
                    "asset_media/gambar/exodia right leg.png",
                    "asset_media/suara/right leg of the for.mp3",
                    "RIGHT LEG OF THE FORBIDDEN ONE"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCard(
                    "asset_media/gambar/exodia left arm.png",
                    "asset_media/suara/left arm of the forb.mp3",
                    "LEFT ARM OF THE FORBIDDEN ONE"),
                buildCard(
                    "asset_media/gambar/exodia right arm.png",
                    "asset_media/suara/right arm of the for.mp3",
                    "RIGHT ARM OF THE FORBIDDEN ONE"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCard(
                    "asset_media/gambar/exodia.png",
                    "asset_media/suara/exodia the forbidden.mp3",
                    "EXODIA THE FORBIDDEN ONE"),
              ],
            ),
            SizedBox(height: 5), // Add spacing between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(clickMessage, style: TextStyle(fontSize: 30)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
