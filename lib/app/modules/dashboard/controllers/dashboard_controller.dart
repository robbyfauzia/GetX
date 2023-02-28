import 'dart:convert';

import 'package:get/get.dart';
import 'package:project/app/data/entertainment_response.dart';
import 'package:project/app/data/headline_response.dart';
import 'package:project/app/data/sports_response.dart';
import 'package:project/app/data/technology_response.dart';
import 'package:project/app/utils/api.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController
  final _getConnect = GetConnect();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  Future<HeadlineResponse> getHeadline() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.headline);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return HeadlineResponse.fromJson(jsonDecode(response.body));
  }
  Future<TechnologyResponse> getTechnology() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.technology);
    //mengembalikan data response dalam bentuk TechnologyResponse setelah di-decode dari JSON
    return TechnologyResponse.fromJson(jsonDecode(response.body));
  }
  Future<SportsResponse> getSports() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.sports);
    //mengembalikan data response dalam bentuk SportsResponse setelah di-decode dari JSON
    return SportsResponse.fromJson(jsonDecode(response.body));
  }
  Future<EntertainmentResponse> getEntertainment() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.entertainment);
    //mengembalikan data response dalam bentuk EntertainmentResponse setelah di-decode dari JSON
    return EntertainmentResponse.fromJson(jsonDecode(response.body));
  }
}

