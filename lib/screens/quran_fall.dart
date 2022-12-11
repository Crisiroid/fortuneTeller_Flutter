// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:faller/screens/show_fall.dart';
import 'package:flutter/material.dart';

class quranFalls extends StatefulWidget {
  static const String thisPageRouteName = '/quranPage';
  const quranFalls({Key? key}) : super(key: key);

  @override
  State<quranFalls> createState() => _quranFallsState();
}

class _quranFallsState extends State<quranFalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("Images/13.jpg"),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 185, 82),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        "برای هر کسی پیش می‌آید که در زندگی روزمره‌اش نیازمند تصمیم‌گیری‌های مهمی باشد و برای این مسئله دچار تردید شود. اولین مشکل‌گشا برای این‌جور مواقع قدرت تفکر است. اگر دیدید که دست تنها نمی‌توانید تصمیم بگیرید باید بروید به سراغ افرادی که بتوانند شما را در این امر مهم کمک کنند و با آن‌ها مشورت کنید. اما گاهی مواقع است که حتی مشورت هم گره‌ای از کار باز نمی‌کند و نیازمند دستمایه محکم‌تری برای توسل هستید تا بتواند گرد تردید را از ذهنتان پاک کند و خیالتان را برای تصمیم‌گیری راحت کند",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "البته تفسیر استخاره کار من و شما نیست و باید بر اساس نظر اهالی تفسیر قرآن عمل کنیم. سامانه‌های استخاره آنلاین دقیقا همین کار را برای شما انجام می‌دهند. شما با رعایت شرایطی که برای استخاره گرفتن ذکر شده خودتان شخصاً با قرآن استخاره می‌گیرید و این سامانه بر اساس نظر اهل تفسیر استخاره شما را معنا می‌کنند.",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 19, 110, 22),
                            fontWeight: FontWeight.bold),
                      ),
                      Builder(builder: (context) {
                        return ElevatedButton(
                          onPressed: () {
                            int randomint = Random().nextInt(50);
                            String finalAddress = "falls/Hafez/$randomint.gif";
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => showFall(
                                        picAddress: "falls/Quran/25.gif",
                                        type: "نتیجه استخاره با قرآن")));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(0, 255, 255, 255),
                            shadowColor: const Color.fromARGB(0, 255, 255, 255),
                          ),
                          child: Image.asset("Images/hafez_sabt.png"),
                        );
                      })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
