import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loginui_page/functions/signincomp.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _toggleRememberMe(bool value) {
    setState(() {
      _rememberMe = value;
    });
  }

  void signIn() {
    // sign-in logic
  }

  void signUp() {
    // sign-up logic
  }

  void terms() {
    // terms logic
  }

  void policy() {
    // policy logic
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Container(
                    width: 140,
                    height: 140,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfffdf3e0),
                    ),
                    child: Transform.scale(
                      scale: 0.8,
                      child: Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffebf4f5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffebf4f5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: const Color(0xffebf4f5),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFEBF4F5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFEBF4F5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: const Color(0xffebf4f5),
                        filled: true,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          color: Colors.grey,
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (bool? value) {
                          _toggleRememberMe(value ?? false);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        'Remember Me',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 75),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFD5122F),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  FractionallySizedBox(
                    widthFactor: 1.25,
                    child: SignInButton(
                      onTap: signIn,
                    ),
                  ),
                  const SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: signUp,
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 180),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                          'By clicking "Sign In" above, you agree to 7krave\'s',
                          style: const TextStyle(
                            color: Color(0xff020202),
                            fontSize: 13,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = terms,
                        ),
                        TextSpan(
                          text: ' Terms &\n Conditions',
                          style: const TextStyle(
                            color: Color(0xFFC0B150),
                            fontSize: 13,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = policy,
                        ),
                        const TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: const TextStyle(
                            color: Color(0xFFC0B150),
                            fontSize: 13,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = policy,
                        ),
                        const TextSpan(
                          text: '.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 15,
              left: 10,
              child: CircleAvatar(
                backgroundColor: const Color(0xFFDAF4FA),
                radius: 25,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            const Positioned(
              top: 30,
              right: 270,
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}