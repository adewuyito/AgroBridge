import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OnboardingData {
  static const List<String> heading = [
    'Source Quality Agricultural Product with Confidence',
    'Browse Verified Product ',
    'Request a Quote in Minutes',
    'From Farm to Your Doorstep',
  ];
  static const List<String> subHeading = [
    'Buy directly from verified supplier across Africa.',
    'Explore grains, spices, seeds, and cash crops with clear specs, origin, and availability.',
    'Tell us your quantity, destination, and requirements, we handle pricing and logistics.',
    'Our team manages sourcing, packaging, and shipping, so you receive what your ordered.',
  ];
  static final List<Widget> assets = [
    Assets.onboardingSvg.onboardingTabSvg1.svg(),
    Assets.onboardingSvg.onboardingTabSvg2.svg(),
    Assets.onboardingSvg.onboardingTabSvg3.svg(),
    Assets.onboardingSvg.onboardingTabSvg4.svg(),
  ];
}
