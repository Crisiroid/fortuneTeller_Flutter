// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:faller/screens/show_fall.dart';
import 'package:flutter/material.dart';

class hafezFalls extends StatefulWidget {
  static const String thisPageRouteName = '/hafezPage';
  const hafezFalls({Key? key}) : super(key: key);

  @override
  State<hafezFalls> createState() => _hafezFallsState();
}

class _hafezFallsState extends State<hafezFalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("Images/12.png"),
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
                        "مشهور است که امروز در خانهٔ هر ایرانی یک دیوان حافظ یافت می‌شود. ایرانیان طبق رسوم قدیمی خود در روزهای عید ملی یا مذهبی نظیر نوروز بر سر سفره هفت سین، و یا شب یلدا، با کتاب حافظ فال می‌گیرند. برای این کار، یک نفر از بزرگان خانواده یا کسی که بتواند شعر را به خوبی بخواند یا کسی که دیگران معتقدند به اصطلاح خوب فال می‌گیرد ابتدا نیت می‌کند، یعنی در دل آرزویی می‌کند. سپس به طور تصادفی صفحه‌ای را از کتاب حافظ می‌گشاید و با صدای بلند شروع به خواندن می‌کند",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "ای حافظ شیرازی! تو محرم هر رازی! تو را به خدا و به شاخ نباتت قسم می دهم که هر چه صلاح و مصلحت می بینی برایم آشکار و آرزوی مرا براورده سازی",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 19, 110, 22)),
                      ),
                      Builder(builder: (context) {
                        return ElevatedButton(
                          onPressed: () {
                            int randomint = Random().nextInt(163);
                            String finalAddress = "falls/Hafez/$randomint.gif";
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => showFall(
                                        picAddress: finalAddress,
                                        type: "نتیجه فال حافظ")));
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
