
import '../constants/router_constants.dart';
import '../helper/Interfaces/helper_imports.dart';
import 'factory/transition_creator.dart';
import 'implementation/cupertino/Options/cupertino_animation_option.dart';
import 'implementation/cupertino/cupertino_transition_animation.dart';
import 'implementation/fade/Option/fade_animation_option.dart';
import 'implementation/fade/fade_transition_animation.dart';
import 'implementation/rotation/Option/rotation_animation_option.dart';
import 'implementation/rotation/rotation_transition_animation.dart';
import 'implementation/scale/Options/scale_animation_option.dart';
import 'implementation/scale/scale_transition_animation.dart';
import 'implementation/shake/Options/shake_animation_options.dart';
import 'implementation/shake/shake_transition_animation.dart';
import 'implementation/size/Option/size_animation_option.dart';
import 'implementation/size/size_transition_animation.dart';
import 'implementation/slide/Option/slide_animation_option.dart';
import 'implementation/slide/slide_transition_animation.dart';

class TransitionTypeBuilder {
  static TransitionCreator create({
    required TransitionType type,
    AnimationOption? options,
  }) {
    switch (type) {
      case TransitionType.slide:
        final slideOptions = options as SlideAnimationOptions?;
        return SlideTransitionAnimation(
          options: slideOptions ?? const SlideAnimationOptions(),
        );
      case TransitionType.fade:
        final fadeOptions = options as FadeAnimationOptions?;
        return FadeTransitionAnimation(
          options: fadeOptions ?? const FadeAnimationOptions(),
        );
      case TransitionType.scale:
        final scaleOptions = options as ScaleAnimationOptions?;
        return ScaleTransitionAnimation(
          options: scaleOptions ?? const ScaleAnimationOptions(),
        );
      case TransitionType.rotation:
        final rotationOptions = options as RotationAnimationOptions?;
        return RotationTransitionAnimation(
          options: rotationOptions ?? const RotationAnimationOptions(),
        );
      case TransitionType.cupertino:
        final cupertinoOptions = options as CupertinoAnimationOptions?;
        return CupertinoTransitionAnimation(
          options: cupertinoOptions ?? const CupertinoAnimationOptions(),
        );
      case TransitionType.size:
        final sizeOptions = options as SizeAnimationOptions?;
        return SizeTransitionAnimation(
          options: sizeOptions ?? const SizeAnimationOptions(),
        );
      case TransitionType.shake:
        final shakeOptions = options as ShakeAnimationOptions?;
        return ShakeTransitionAnimation(
          options: shakeOptions ?? const ShakeAnimationOptions(),
        );
    }
  }
}
