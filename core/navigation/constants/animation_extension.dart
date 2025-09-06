import 'package:flutter/widgets.dart';

import '../transition/implementation/fade/Animator/fade_animator.dart';
import '../transition/implementation/fade/Option/fade_animation_option.dart';

extension AnimationExtension on AnimatedWidget {
  Widget buildSecondaryTransition({
    required Animation<double> animation,
    required bool applySecondaryTransition,
  }) {
    if (applySecondaryTransition) {
      return FadeTransition(
        opacity: FadeAnimator(const FadeAnimationOptions()).animator(animation),
        child: this,
      );
    } else {
      return this;
    }
  }
}
