import 'package:dartz/dartz.dart';
import 'package:eco_style/data/models/sign_up_req_parameter.dart';
import 'package:eco_style/data/source/auth_api_service.dart';
import 'package:eco_style/domain/repository/auth.dart';
import 'package:eco_style/service_locator.dart';

class AuthRepositoryImplementation extends AuthRepository {
  @override
  Future<Either> signUp(SignUpReqParameter signUpReq) async {
    return sl<AuthApiService>().signUp(signUpReq);
  }
}
