import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final Function()? onTap;

  const GoogleButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 70),
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          color: Color(0xFF4285F4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/google.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 10),
            // ignore: prefer_const_constructors
            Text(
              "Continue with Google",
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ],
        ),
      ),
    );
  }
}