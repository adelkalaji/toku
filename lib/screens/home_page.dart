import 'package:flutter/material.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';
import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("toku"),
      ),
      body: Column(
        children: [
          category(
            text: "numbers",
            color: Color(0xffEF9235),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return numbersPage();
              }));
            },
          ),
          category(
            text: "family members", 
            color: Color(0xff558B37),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return familypage();
              }));
            },
            ),
          category(
            text: "colors",
            color: Color(0xff79359F),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return colorspage();
              }));
            },
          ),
          category(
            text: "phrases",
            color: Color(0xff50ADC7),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return phrasrspage();
              }));
            },
          )
        ],
      ),
    );
  }
}
