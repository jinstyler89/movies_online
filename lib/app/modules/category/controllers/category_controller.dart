// ignore_for_file: unused_import, unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  final count = 0.obs;
  RxInt selectedChoiceIndex = 0.obs;
  RxInt selectedChoiceIndex1 = 0.obs;
  RxInt selectedChoiceIndex2 = 0.obs;
  RxInt selectedChoiceIndex3 = 0.obs;
  List<String> category = ['全部', '电影', '电视剧', '综艺'];
  List<String> areas = ['全部', '中国', '美国', '韩国', '日本','英国','泰国', '其他'];
  List<String> years = ['全部', '2023', '2022', '2021', '2020','2019','2018','2017', '更早'];
  List<String> types = ['全部', '动作', '喜剧', '爱情', '科幻', '其他'];

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
}
