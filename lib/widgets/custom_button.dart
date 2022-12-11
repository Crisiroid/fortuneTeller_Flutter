import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class esBtn extends StatelessWidget {
  final String inputText;
  final VoidCallback onTap;
  const esBtn({Key? key, required this.inputText, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(inputText),
      style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 155, 102, 4),
          minimumSize: Size(350, 60)),
    );
  }
}
