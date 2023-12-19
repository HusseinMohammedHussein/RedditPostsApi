import 'package:flutter_assignment/models/FlutterDevPost.dart';
import 'package:flutter_assignment/services/BaseService.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'FlutterDevRestClient.g.dart';

@RestApi(baseUrl: BaseService.BASE_URL)
abstract class FlutterDevRestClient {

  factory FlutterDevRestClient(Dio dio, {String baseUrl}) = _FlutterDevRestClient;

  // @GET("${BaseService.NEW}?limit={limit}")
  @GET(BaseService.NEW)
  @Headers(<String, dynamic> {
    "Authorization" : BaseService.Auth_Token,
    "User-Agent" : BaseService.USER_AGENT
  })
  Future<FlutterDevPost> listNewPosts();
  // Future<FlutterDevPost> listNewPosts(@Path("limit") int limit);

  @GET(BaseService.HOT)
  @Headers(<String, dynamic> {
    "Authorization" : BaseService.Auth_Token,
    "User-Agent" : BaseService.USER_AGENT
  })
  Future<FlutterDevPost> listHotPosts();

  @GET(BaseService.RISING)
  @Headers(<String, dynamic> {
    "Authorization" : BaseService.Auth_Token,
    "User-Agent" : BaseService.USER_AGENT
  })
  Future<FlutterDevPost> listRisingPosts();
}