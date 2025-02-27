import 'package:eco_style/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_style/data/models/sign_up_req_parameter.dart';
import 'package:eco_style/domain/repository/auth.dart';
import 'package:eco_style/service_locator.dart';

class SignUpUseCase implements Usecase<Either, SignUpReqParameter> {
  @override
  Future<Either> call({SignUpReqParameter? param}) async {
    return sl<AuthRepository>().signUp(param!);
  }
}
