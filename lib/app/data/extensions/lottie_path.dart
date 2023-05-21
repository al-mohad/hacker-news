import '../enums/lottie_animation.dart';

extension GetFullPath on LottieAnimation {
  String get fullPath => 'assets/animations/$name.json';
}
