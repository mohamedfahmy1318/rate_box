
import 'package:flutter/material.dart';

import '../../constants/router_constants.dart';
import '../../helper/Interfaces/helper_imports.dart';
import '../factory/page_router_creator.dart';

class MaterialPageRouterCreator implements PageRouterCreator {
  @override
  Route<T> create<T>(
    Widget page, {
    RouteSettings? settings,
    TransitionType? transition,
    AnimationOption? animationOptions,
  }) {
    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }
}
