import 'package:dio/dio.dart';
import 'package:eco_style/data/models/sign_in_req_parameter.dart';
import 'package:eco_style/data/models/sign_up_req_parameter.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_style/core/constants/api_urls.dart';
import 'package:eco_style/core/network/dio_client.dart';
import 'package:eco_style/service_locator.dart';

abstract class AuthApiService {
  Future<Either> signUp(SignUpReqParameter signUpReq);
  Future<Either> signIn(SignInReqParameter signInReq);
}

class AuthApiServiceImplementation extends AuthApiService {
  @override
  Future<Either> signUp(SignUpReqParameter signUpReq) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrls.register,
        data: signUpReq.toMap(),
      );

      return Right(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        return Left(
            e.response!.data['message'] ?? "An unexpected error occurred");
      }
      return Left("An unexpected error occurred: ${e.response?.data}");
    }
  }

  @override
  Future<Either> signIn(SignInReqParameter signInReq) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrls.login,
        data: signInReq.toMap(),
      );

      return Right(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        return Left(
            e.response!.data['message'] ?? "An unexpected error occurred");
      }
      return Left("An unexpected error occurred: ${e.response?.data}");
    }
  }
}
