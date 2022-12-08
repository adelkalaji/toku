import 'package:flutter/material.dart';
import '../components/listItem.dart';
import '../models/phrase.dart';

class phrasrspage extends StatelessWidget {
  const phrasrspage({key});
  final List<phrase> phrases = const [
    phrase(
        jpname: "kodoku suru koto o wasurenaide kudasai",
        enname: "dont forget to subscribe",
        sound: 'dont_forget_to_subscribe.wav'),
    phrase(
        jpname: "watashi wa puroguramingu daisulidesu",
        enname: "i love programing",
        sound: 'i_love_programming.wav'),
    phrase(
        jpname: "puroguramingu wa kantandesu",
        enname: "programing is easy",
        sound: 'programming_is_easy.wav'),
    phrase(
        jpname: "doko ni iku no",
        enname: "where are you going",
        sound: 'where_are_you_going.wav'),
    phrase(
        jpname: "namae wa nandesu ka",
        enname: "what is your name",
        sound: 'what_is_your_name.wav'),
    phrase(
        jpname: "watashi wa anime ga daisukidesu",
        enname: "i love anime",
        sound: 'i_love_anime.wav'),
    phrase(
        jpname: "go kibun wa ikagadesu ka",
        enname: "how are you feeling",
        sound: 'how_are_you_feeling.wav'),
    phrase(
        jpname: "kimasu ka",
        enname: "are you coming",
        sound: 'are_you_coming.wav'),
    phrase(
        jpname: "hai watashi ua kite imasu",
        enname: "yes im coming",
        sound: 'yes_im_coming.wav')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("colors"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return phraseItem(
            item: phrases[index],
            color: Color.fromARGB(255, 72, 4, 77),
            itemtype: "colors",
          );
        },
      ),
    );
  }
}
