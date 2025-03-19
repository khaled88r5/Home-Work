import 'package:flutter/material.dart';
import 'package:languagelearningapp/items.dart';

class FamilyMembersPage extends StatefulWidget {
  const FamilyMembersPage({super.key});

  @override
  State<FamilyMembersPage> createState() => _FamilyMembersPageState();
}

class _FamilyMembersPageState extends State<FamilyMembersPage> {
  List<Items> items = [
    Items(
      image: 'assets/images/family_members/family_daughter.png',
      enName: 'family_daughter',
      jbName: 'ichi',
      sound: 'sounds/family_members/daughter.wav',
    ),
    Items(
      image: 'assets/images/family_members/family_father.png',
      enName: 'family_father',
      jbName: 'ni',
      sound: 'sounds/family_members/father.wav',
    ),
    Items(
      image: 'assets/images/family_members/family_grandfather.png',
      enName: 'family_grandfather',
      jbName: 'san',
      sound: 'sounds/family_members/grand father.wav',
    ),
    Items(
      image: 'assets/images/family_members/family_grandmother.png',
      enName: 'family_grandmother',
      jbName: 'shi',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    Items(
      image: 'assets/images/family_members/family_mother.png',
      enName: 'family_mother',
      jbName: 'go',
      sound: 'sounds/family_members/mother.wav',
    ),
    Items(
      image: 'assets/images/family_members/family_older_brother.png',
      enName: 'family_older_brother',
      jbName: 'Roku',
      sound: 'sounds/family_members/older bother.wav',
    ),
    Items(
      image: 'assets/images/family_members/family_older_sister.png',
      enName: 'family_older_sister',
      jbName: 'Sebun',
      sound: 'sounds/family_members/older sister.wav',
    ),
    Items(
      image: 'assets/images/family_members/family_son.png',
      enName: 'family_son',
      jbName: 'hachi',
      sound: 'sounds/family_members/son.wav',
    ),
    Items(
      image: 'assets/images/family_members/family_younger_brother.png',
      enName: 'family_younger_brother',
      jbName: 'ochi',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    Items(
      image: 'assets/images/family_members/family_younger_sister.png',
      enName: 'family_younger_sister',
      jbName: 'nahi',
      sound: 'sounds/family_members/younger sister.wav',
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
            color: Colors.green,
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
