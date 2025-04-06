// ignore_for_file: unused_import

import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'assets.dart';
import 'package:flutter/material.dart';

import 'createaccount.dart';
import 'onboardingitem.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0; // Track the current page index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index; // Update the current index
                });
              },
              children: [
                OnboardingPage(
                  image: Assets.assetsGroup440,
                  title: "Welcome to Fresh Fruits",
                  subtitle: "Grocery application",
                  isLast: false, // First page is not the last
                ),
                OnboardingPage(
                  image: Assets.assetsGroup440,
                  title: "We provide best quality Fruits to your family",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  isLast: false, // Second page is not the last
                ),
                OnboardingPage(
                  image: Assets.assetsGroup439,
                  title: "Fast and responsibly delivery by our courier",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  isLast: true, // Last page
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.blue,
              dotHeight: 15,
              dotWidth: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: currentIndex != 2 // Check if it's not the last page
                ? ElevatedButton(
                    onPressed: () {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text("NEXT",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  )
                : Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CreateAccount(),
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 80, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        child: const Text("CREATE AN ACCOUNT",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                      const SizedBox(height: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 80, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          side: const BorderSide(color: Colors.black),
                        ),
                        child: const Text("LOGIN",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                    ],
                  ),
          )
        ],
      ),
    );
  }
}
