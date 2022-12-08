// ignore: file_names
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/model.dart';
import 'package:toku/models/phrase.dart';

class listItem extends StatelessWidget {
  const listItem(
      {key, required this.item, required this.color, required this.itemtype});
  final model item;
  final Color color;
  final String itemtype;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            Container(color: Color(0xffFFF6DC), child: Image.asset(item.image)),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.jpname,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    item.enname,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            IconButton(
                onPressed: () async {
                  try {
                    final player = AudioPlayer();
                    AudioCache(prefix: 'assets/sounds/$itemtype/');
                    await player.setSource(
                        AssetSource("sounds/$itemtype/${item.sound}"));
                    await player.resume();
                    // player.play(Source"assets/sounds/$itemtype/${item.sound}");
                  } catch (ex) {
                    print(ex);
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ))
          ],
        ));
  }
}

class phraseItem extends StatelessWidget {
  const phraseItem(
      {key, required this.item, required this.color, required this.itemtype});
  final phrase item;
  final Color color;
  final String itemtype;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: 100,
        color: color,
        width: size.width * 0.8,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.8,
                    child: Text(
                      item.jpname,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Text(
                    item.enname,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            IconButton(
                onPressed: () async {
                  try {
                    final player = AudioPlayer();
                    AudioCache(prefix: 'assets/sounds/$itemtype/');
                    await player
                        .setSource(AssetSource("sounds/phrases/${item.sound}"));
                    await player.resume();
                    // player.play(Source"assets/sounds/$itemtype/${item.sound}");
                  } catch (ex) {
                    print(ex);
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ))
          ],
        ));
  }
}
