// ignore_for_file: camel_case_types, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class sourcesPage extends StatelessWidget {
  const sourcesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            SizedBox(
              height: 34,
            ),
            Center(
              child: Column(
                children: [
                  Text("About this app"),
                  Text("Our Sources:"),
                  Text("https://www.20script.ir/اسکریپت-حرفه-ای-فال-حافظ/"),
                  Text(
                      "https://www.20script.ir/اسکریپت-استخاره-آنلاین-قرآن-کریم/"),
                  SizedBox(height: 350),
                  Text("Developer"),
                  Text("Amir Sajjad Hosein Pour",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("Crisiroid",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  InkWell(
                    child: Text("Instagram"),
                    onTap: () => launch('https://instagram.com/amirsivarl'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
