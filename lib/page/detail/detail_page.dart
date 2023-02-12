import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_gallery/page/detail/detail_controller.dart';


class DetailPage extends GetView<DetailController>{
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ));
  }

}