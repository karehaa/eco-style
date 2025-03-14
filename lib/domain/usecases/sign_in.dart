import 'package:eco_style/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_style/data/models/sign_in_req_parameter.dart';
import 'package:eco_style/domain/repository/auth.dart';
import 'package:eco_style/service_locator.dart';

class SignInUseCase implements Usecase<Either, SignInReqParameter> {
  @override
  Future<Either> call({SignInReqParameter? param}) async {
    return sl<AuthRepository>().signIn(param!);
  }
}
