
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_box/config/language/languages.dart';
import 'package:rate_box/core/helpers/cache_service.dart';
import 'package:rate_box/core/navigation/constants/router_constants.dart';
import 'package:rate_box/core/navigation/page_router/implementation/custom_page_router.dart';
import 'package:rate_box/core/navigation/page_router/page_router_builder.dart';
import 'package:rate_box/core/navigation/transition/implementation/scale/Options/scale_animation_option.dart';
import 'package:rate_box/core/network/backend_configuation.dart';
import 'package:rate_box/core/shared/Functions/setup_service_locators.dart';
import 'package:rate_box/core/shared/bloc_observer.dart';
import 'package:rate_box/core/widgets/exeption_view.dart';

import 'app.dart';



void main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    EasyLocalization.ensureInitialized(),
    CacheStorage.init(),
  ]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  setUpServiceLocator();
  BackendConfiguration.setBackendType(BackendType.php);
  PageRouterBuilder().initAppRouter(
    config: PlatformConfig(
      android: CustomPageRouterCreator(
        parentTransition: TransitionType.scale,
        parentOptions: const ScaleAnimationOptions(
          duration: Duration(milliseconds: 300),
        ) ,
      ),
    ),
  );
  if (kReleaseMode) {
    ErrorWidget.builder = (FlutterErrorDetails details) =>
        const ExceptionView();
  }
  runApp(
    EasyLocalization(
      supportedLocales: Languages.supportedLocales,
      path: 'assets/translations',
      //fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      child: const App(),
    ),
  );
}
