import 'package:flutter/material.dart';
import '../components/listItem.dart';
import '../models/model.dart';

class familypage extends StatelessWidget {
  const familypage({key});
  final List<model> family = const [
    model(
        image: "assets/images/family_members/family_father.png",
        jpname: "chichioya",
        enname: "father",
        sound: 'father.wav'),
    model(
        image: "assets/images/family_members/family_mother.png",
        jpname: "hahaoya",
        enname: "mother",
        sound: 'mother.wav'),
    model(
        image: "assets/images/family_members/family_grandfather.png",
        jpname: "ojisan",
        enname: "grand father",
        sound: 'grand_father.wav'),
    model(
        image: "assets/images/family_members/family_grandmother.png",
        jpname: "sobo",
        enname: "grand mother",
        sound: 'grand_mother.wav'),
    model(
        image: "assets/images/family_members/family_daughter.png",
        jpname: "musume",
        enname: "daughter",
        sound: 'daughter.wav'),
    model(
        image: "assets/images/family_members/family_son.png",
        jpname: "musuko",
        enname: "son",
        sound: 'son.wav'),
    model(
        image: "assets/images/family_members/family_older_brother.png",
        jpname: "nisan",
        enname: "older brother",
        sound: 'older_brother.wav'),
    model(
        image: "assets/images/family_members/family_older_sister.png",
        jpname: "ane",
        enname: "older sister",
        sound: 'older_sister.wav'),
    model(
        image: "assets/images/family_members/family_younger_brother.png",
        jpname: "ototo",
        enname: "younger brother",
        sound: 'younger_brother.wav'),
    model(
        image: "assets/images/family_members/family_younger_sister.png",
        jpname: "imoto",
        enname: "younger sister",
        sound: 'younger_sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("family members"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return listItem(
            item: family[index],
            color: Color(0xff558B37),
            itemtype: "family_members",
          );
        },
      ),
    );
  }
}
