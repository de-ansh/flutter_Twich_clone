import 'package:flutter/material.dart';
import 'package:twitch_clone/screen/SignupScreen.dart';
import 'package:twitch_clone/screen/loginscreen.dart';
import 'package:twitch_clone/widgets/CustomButton.dart';

class OnBoardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to \n Twitch Clone",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomButtonWidget(
                  text: 'Log in',
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  }),
            ),
            CustomButtonWidget(
                text: 'Sign up',
                onTap: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                }),
          ],
        ),
      ),
    );
  }
}
