import 'package:flutter/material.dart';
import 'package:languagelearningapp/items.dart';

class phrasePage extends StatefulWidget {
  const phrasePage({super.key});

  @override
  State<phrasePage> createState() => _phrasePageState();
}

class _phrasePageState extends State<phrasePage> {
  List<Items> items = [
    Items(
      enName:
          'Ködoku suru koto o wasurenaide kudasai \ndont forget to subscribe',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    Items(
      enName: 'atashi wa puroguramingu ga daisukidesu\ni love programming',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    Items(
      enName: 'Puroguramingu wa kantandesu\nprogramming is easy',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Items(
      enName: 'o niiku no\nare you goi',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Items(
      enName: 'Namae wa nandesu ka\nwhat is your name ?',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    Items(
      enName: 'atashi wa anime ga daisukidesu\nlove anime',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    Items(
      enName: 'Go kibun wa ikagadesu ka\nhow are you feeling?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    Items(
      enName: 'Namae wa nandesu ka\nwhat is your name ?',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'phrases',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.blue,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    items[index].enName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    items[index].playSound();
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
