import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
String text;
VoidCallback onPressed;
TextStyle style;

  AppButton({super.key,
    required this.text,
    required this.onPressed,
    required this.style,

  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(onPressed:  onPressed,
          child:Text(text,style: style,) , ),);
  }
}
