import 'package:flutter/material.dart';
import 'package:languagelearningapp/items.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({super.key});

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  List<Items> items = [
    Items(
      image: 'assets/images/colors/color_black.png',
      enName: 'color_black',
      jbName: '黒',
      sound: 'sounds/colors/black.wav',
    ),
    Items(
      image: 'assets/images/colors/color_brown.png',
      enName: 'brown',
      jbName: '茶色',
      sound: 'sounds/colors/brown.wav',
    ),
    Items(
      image: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'color_dusty_yellow',
      jbName: 'くすんだ黄色',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    Items(
      image: 'assets/images/colors/color_gray.png',
      enName: 'color_gray',
      jbName: '灰色',
      sound: 'sounds/colors/gray.wav',
    ),
    Items(
      image: 'assets/images/colors/color_green.png',
      enName: 'color_green',
      jbName: '緑',
      sound: 'sounds/colors/green.wav',
    ),
    Items(
      image: 'assets/images/colors/color_red.png',
      enName: 'color_red',
      jbName: '赤',
      sound: 'sounds/colors/red.wav',
    ),
    Items(
      image: 'assets/images/colors/color_white.png',
      enName: 'color_white',
      jbName: '白',
      sound: 'sounds/colors/white.wav',
    ),
    Items(
      image: 'assets/images/colors/yellow.png',
      enName: 'color_yellow',
      jbName: '黄色',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.purple,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].jbName!,
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
                        items[index].enName,
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
