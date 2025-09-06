import 'package:flutter/material.dart';

import '../../../config/language/locale_keys.g.dart';
import '../../../config/res/app_sizes.dart';
import '../../../config/res/assets.gen.dart';

class NotContainData extends StatelessWidget {
  const NotContainData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppAssets.lottie.noData.lottie(
            width: MediaQuery.of(context).size.width * .7,
            height: MediaQuery.of(context).size.height * .1,
          ),
          SizedBox(height: AppSize.sH10),
          SizedBox(height: AppSize.sH10),
          Text(LocaleKeys.errorexceptionNotcontaindesc),
        ],
      ),
    );
  }
}
