
import 'package:flutter/material.dart';

import '../../constants/router_constants.dart';
import '../../helper/Interfaces/helper_imports.dart';

abstract class PageRouterCreator {
  Route<T> create<T>(
    Widget page, {
    RouteSettings? settings,
    TransitionType? transition,
    AnimationOption? animationOptions,
  });
}
