// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class showFall extends StatefulWidget {
  static const String thisPageRouteName = '/showFall';
  late String picAddress;
  late String type;

  showFall({Key? key, required this.picAddress, required this.type})
      : super(key: key);

  @override
  State<showFall> createState() => _showFallState();
}

class _showFallState extends State<showFall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(12),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        widget.type,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(widget.picAddress),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
