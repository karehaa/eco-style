import 'package:eco_style/core/network/dio_client.dart';
import 'package:eco_style/data/repository/auth.dart';
import 'package:eco_style/data/source/auth_api_service.dart';
import 'package:eco_style/domain/repository/auth.dart';
import 'package:eco_style/domain/usecases/sign_in.dart';
import 'package:eco_style/domain/usecases/sign_up.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());
  sl.registerSingleton<AuthApiService>(
    AuthApiServiceImplementation(),
  );
  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImplementation(),
  );
  sl.registerSingleton<SignUpUseCase>(
    SignUpUseCase(),
  );
  sl.registerSingleton<SignInUseCase>(
    SignInUseCase(),
  );
}
