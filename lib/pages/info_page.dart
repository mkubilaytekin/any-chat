import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'home_page.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: const Color(0xffF7F6BB),
          dotsDecorator: const DotsDecorator(activeColor: Color(0xff114232)),
          pages: [
            PageViewModel(
              title: "Sorularına cevap bul",
              body:
              "İstediğin alanda sorularını sorup cevap bulabilirsin",
              image: const Center(
                child: Text("❔", style: TextStyle(fontSize: 100.0)),
              ),
              decoration: const PageDecoration(
                titleTextStyle: TextStyle(color: Colors.orange),
                bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ),
            PageViewModel(
              title: "Neyi nasıl yapacağını çok dert etme asistanın yanında",
              body:
              "Gemini asistan ile neyi nasıl yapacağını keşfedebilirsin",
              image: const Center(
                child: Text("🔮", style: TextStyle(fontSize: 100.0)),
              ),
              decoration: const PageDecoration(
                titleTextStyle: TextStyle(color: Colors.orange),
                bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ),
          ],
          showNextButton: false,
          done: const Text(
            "Bitti",
            style: TextStyle(color: Color(0xff114232)),
          ),
          onDone: () {
            // On button pressed
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                    (route) => false);
          },
        ));
  }
}