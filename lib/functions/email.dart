import 'package:flutter/material.dart';

class EmailButton extends StatelessWidget {
  final Function()? onTap;

  const EmailButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 70),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Continue with Email",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}