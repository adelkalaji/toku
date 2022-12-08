import 'package:flutter/material.dart';
import '../components/listItem.dart';
import '../models/model.dart';

class colorspage extends StatelessWidget {
  const colorspage({key});
  final List<model> colors = const [
    model(
        image: "assets/images/colors/color_black.png",
        jpname: "burakku",
        enname: "black",
        sound: 'black.wav'),
    model(
        image: "assets/images/colors/color_brown.png",
        jpname: "chairo",
        enname: "brown",
        sound: 'brown.wav'),
    model(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpname: "hoki ppoi kiiro",
        enname: "dusty yellow",
        sound: 'dusty_yellow.wav'),
    model(
        image: "assets/images/colors/color_gray.png",
        jpname: "gure",
        enname: "gray",
        sound: 'gray.wav'),
    model(
        image: "assets/images/colors/color_green.png",
        jpname: "midori",
        enname: "green",
        sound: 'green.wav'),
    model(
        image: "assets/images/colors/color_red.png",
        jpname: "aka",
        enname: "red",
        sound: 'red.wav'),
    model(
        image: "assets/images/colors/color_white.png",
        jpname: "shiroi",
        enname: "white",
        sound: 'white.wav'),
    model(
        image: "assets/images/colors/yellow.png",
        jpname: "kiiro",
        enname: "yellow",
        sound: 'yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("colors"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return listItem(
            item: colors[index],
            color: Color(0xff79359f),
            itemtype: "colors",
          );
        },
      ),
    );
  }
}
