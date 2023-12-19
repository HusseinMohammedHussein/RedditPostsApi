import 'package:flutter_assignment/services/BaseService.dart';
import 'package:flutter_assignment/rest_client/FlutterDevRestClient.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

import '../models/FlutterDevPost.dart';

class FlutterDevService extends BaseService {
  final logger = Logger();
  late FlutterDevRestClient newResitClient;

  FlutterDevService() : super() {
    newResitClient = FlutterDevRestClient(dio);
  }

  Future<FlutterDevPost> newPosts() async {
    FlutterDevPost response;
    response = await newResitClient.listNewPosts();
    logger.i("NewPosts_Response>>>> ${response.data.children.first.data.postTitle}" );
    return response;
  }

  Future<FlutterDevPost> hotPosts() async {
    FlutterDevPost response;
    response = await newResitClient.listHotPosts();
    logger.i("NewPosts_Response>>>> ${response.data.children.first.data.postTitle}" );
    return response;
  }

  Future<FlutterDevPost> risingPosts() async {
    FlutterDevPost response;
    response = await newResitClient.listRisingPosts();
    logger.i("NewPosts_Response>>>> ${response.data.children.first.data.postTitle}" );
    return response;
  }

}
