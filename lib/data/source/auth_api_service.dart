import 'package:dio/dio.dart';
import 'package:eco_style/data/models/sign_up_req_parameter.dart';
import 'package:dartz/dartz.dart';
import 'package:eco_style/core/constants/api_urls.dart';
import 'package:eco_style/core/network/dio_client.dart';
import 'package:eco_style/service_locator.dart';

abstract class AuthApiService {
  Future<Either> signUp(SignUpReqParameter signUpReq);
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
      return Left(e.response!.data['message']);
    }
  }
}
