
import '../../../config/res/constants_manager.dart';
import '../../network/dio_service.dart';
import '../../network/network_service.dart';
import '../../notification/notification_service.dart';
import '../cubits/user_cubit/user_cubit.dart';

void setUpServiceLocator() {
  setUpGeneralDependencies();
  // setUpFeatureDependencies();
}

void setUpGeneralDependencies() {
  sl.registerLazySingleton<NetworkService>(() => DioService());

  sl.registerFactory<UserCubit>(() => UserCubit());

  sl.registerFactory<NotificationService>(() => NotificationService());
}
