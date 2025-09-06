
import 'package:flutter/cupertino.dart';

import '../../constants/router_constants.dart';
import '../../helper/Interfaces/helper_imports.dart';
import '../factory/page_router_creator.dart';

class CupertinoPageRouterCreator implements PageRouterCreator {
  @override
  Route<T> create<T>(
    Widget page, {
    RouteSettings? settings,
    TransitionType? transition,
    AnimationOption? animationOptions,
  }) {
    return CupertinoPageRoute(builder: (context) => page, settings: settings);
  }
}
