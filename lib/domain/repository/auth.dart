import 'package:dartz/dartz.dart';
import 'package:eco_style/data/models/sign_in_req_parameter.dart';
import 'package:eco_style/data/models/sign_up_req_parameter.dart';

abstract class AuthRepository {
  Future<Either> signUp(SignUpReqParameter signUpReq);
  Future<Either> signIn(SignInReqParameter signInReq);
}
