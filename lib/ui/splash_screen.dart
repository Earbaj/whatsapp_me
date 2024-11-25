import 'package:flutter/material.dart';
import 'package:whatsapp_me/extensions/custom_theme_extensions.dart';

import '../utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  child: Image.asset(
                    'assets/images/circle.png',
                    color: context.theme.circleImageColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
                child: Column(
              children: [
                const Text(
                  'Welcome to WhatsApp',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Read our ',
                      style: TextStyle(height: 1.5, color: context.theme.greyColor),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy. ',
                          style: TextStyle(color: context.theme.blueColor),
                        ),
                        TextSpan(
                            text: 'Tap "Agree and continue" to accept the '),
                        TextSpan(
                          text: 'Terms of Services.',
                          style: TextStyle(color: context.theme.blueColor),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 42,
                  width: MediaQuery.of(context).size.width - 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Coloors.greenDark,
                        foregroundColor: const Color(0xFF111B21),
                        splashFactory: NoSplash.splashFactory,
                        elevation: 0,
                        shadowColor: Colors.transparent),
                    child: const Text("AGREE AND CONTINUE"),
                  ),
                ),
                const SizedBox(height: 50),
                Material(
                  //color: const Color(0xFF182229),
                  color: context.theme.langBgColor,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: context.theme.langHightlightColor,
                    child: const Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.language,
                            color: Coloors.greenDark,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'English',
                            style: TextStyle(color: Coloors.greenDark),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Coloors.greenDark,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
