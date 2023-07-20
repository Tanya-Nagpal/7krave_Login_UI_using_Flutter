import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  final Function()? onTap;

  const SkipButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        margin: const EdgeInsets.only(top: 10, right: 10),
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          color: Color(0xFFF5EAD7),
          borderRadius: BorderRadius.circular(25),
        ),
        width: 80,
        child: const Center(
          child: Text(
            "Skip",
            style: TextStyle(
              color: Colors.black,
              // fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}