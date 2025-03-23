import 'package:flutter/material.dart';
import 'package:languagelearningapp/items.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumberspageState();
}

class _NumberspageState extends State<NumbersPage> {
  List<Items> items = [
    Items(
      image: 'assets/images/numbers/number_one.png',
      enName: 'One',
      jbName: 'ichi',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_two.png',
      enName: 'Two',
      jbName: 'ni',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_three.png',
      enName: 'Three',
      jbName: 'san',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_four.png',
      enName: 'Four',
      jbName: 'shi',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_five.png',
      enName: 'Five',
      jbName: 'go',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_six.png',
      enName: 'Six',
      jbName: 'Roku',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_seven.png',
      enName: 'Seven',
      jbName: 'Sebun',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_eight.png',
      enName: 'Eight',
      jbName: 'hachi',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_nine.png',
      enName: 'Nine',
      jbName: 'ochi',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Items(
      image: 'assets/images/numbers/number_ten.png',
      enName: 'Ten',
      jbName: 'nahi',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            color: Color(0xfff9952f),
            child: Row(
              children: [
                Container(
                  color: Color(0xfffff4db),
                  width: 100,
                  height: 100,
                  child: Image.asset(items[index].image!),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Text(
                        items[index].enName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        items[index].jbName!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
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
