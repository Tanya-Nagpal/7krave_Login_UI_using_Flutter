import 'package:flutter/material.dart';

class FacebookButton extends StatelessWidget {
  final Function()? onTap;

  const FacebookButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 70),
        decoration: BoxDecoration(
          color: const Color(0xff3b5998),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/facebook.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 10),
            const Text(
              "Continue with Facebook",
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