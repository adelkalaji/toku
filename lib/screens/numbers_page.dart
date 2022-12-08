import 'package:flutter/material.dart';
import 'package:toku/components/listItem.dart';
import '../models/model.dart';

class numbersPage extends StatelessWidget {
  const numbersPage({key});
  final List<model> numbers = const [
    model(
        image: "assets/images/numbers/number_one.png",
        jpname: "ichi",
        enname: "one",
        sound: 'number_one_sound.mp3'),
    model(
        image: "assets/images/numbers/number_two.png",
        jpname: "ni",
        enname: "two",
        sound: 'number_two_sound.mp3'),
    model(
        image: "assets/images/numbers/number_three.png",
        jpname: "san",
        enname: "three",
        sound: 'number_three_sound.mp3'),
    model(
        image: "assets/images/numbers/number_four.png",
        jpname: "shi",
        enname: "four",
        sound: 'number_four_sound.mp3'),
    model(
        image: "assets/images/numbers/number_five.png",
        jpname: "go",
        enname: "five",
        sound: 'number_five_sound.mp3'),
    model(
        image: "assets/images/numbers/number_six.png",
        jpname: "roku",
        enname: "six",
        sound: 'number_six_sound.mp3'),
    model(
        image: "assets/images/numbers/number_seven.png",
        jpname: "shichi",
        enname: "seven",
        sound: 'number_seven_sound.mp3'),
    model(
        image: "assets/images/numbers/number_eight.png",
        jpname: "hachi",
        enname: "eight",
        sound: 'number_eight_sound.mp3'),
    model(
        image: "assets/images/numbers/number_nine.png",
        jpname: "kyuu",
        enname: "nine",
        sound: 'number_nine_sound.mp3'),
    model(
        image: "assets/images/numbers/number_ten.png",
        jpname: "juu",
        enname: "ten",
        sound: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("numbers"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return listItem(
            item: numbers[index],
            color: Color(0xffEF9235),
            itemtype: "numbers",
          );
        },
      ),
    );
  }
}
