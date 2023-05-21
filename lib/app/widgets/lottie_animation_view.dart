import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hacker_news/app/data/extensions/lottie_path.dart';
import 'package:lottie/lottie.dart';

import '../data/enums/lottie_animation.dart';

class LottieAnimationView extends StatelessWidget {
  final LottieAnimation animation;
  final bool repeat;
  final bool reverse;
  final String text;

  const LottieAnimationView({
    super.key,
    required this.animation,
    this.repeat = true,
    this.reverse = false,
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 220,
          child: Lottie.asset(
            fit: BoxFit.fill,
            animation.fullPath,
            reverse: reverse,
            repeat: repeat,
          ),
        ),
        if (text.trim().isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: GoogleFonts.lato(),
            ),
          ),
      ],
    );
  }
}
