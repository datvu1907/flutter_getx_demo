import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_gallery/%20model/photo.dart';
import 'package:image_gallery/network/provider.dart';

import '../../network/repository.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final selectedThemeIndex = 0.obs;
  int page = 1;
  RxList<PhotoModel> listPhoto = <PhotoModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 2);
    tabController.addListener(() {
      selectedThemeIndex.value = tabController.index;
      tabController.animateTo(selectedThemeIndex.value);
      update();
    });
    fetchData();
  }
  fetchData(){
    PhotoModel photoModel;
    AppRepository.getListImage(page: page).then((response) => {
    for(var item in response){
      photoModel = PhotoModel.fromJson(item),
      listPhoto.add(photoModel),
    },

    });
    page += 1;
    print(listPhoto.length);
    update();
  }
  
}