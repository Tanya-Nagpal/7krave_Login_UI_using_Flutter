import 'package:flutter/material.dart';

class AppleButton extends StatelessWidget {
  final Function()? onTap;

  const AppleButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 70),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/appleLogo.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 10),
            const Text(
              "Continue with Apple",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            )
          ],
        ),
      ),
    );
  }
}