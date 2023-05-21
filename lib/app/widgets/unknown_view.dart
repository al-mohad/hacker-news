import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/enums/lottie_animation.dart';
import 'lottie_animation_view.dart';

class UnknownRoute extends GetView {
  const UnknownRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LottieAnimationView(
            text: 'We\'re sorry, the page you requested could not be found!',
            animation: LottieAnimation.error404,
          ),
          TextButton.icon(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Get.back(),
            label: const Text(
              'Go Back',
              // style: loginHead.copyWith(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
