import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_gallery/page/home/home_controller.dart';


class ListPhoto extends GetView<HomeController>{
  const ListPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_){
        return GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              childAspectRatio: 2/3,
            ),
            itemCount: controller.listPhoto.length,
            itemBuilder: (context, index){
              return _buildItem(controller.listPhoto[index].urls!.raw!);
            });
      },
    );
  }
  _buildItem(String image, ) {
    return InkWell(
      onTap: ()  {
        // Get.to(()=>BannerPreviewScreen(listBanner: pageView,),
        //     transition: Transition.fade,
        //     binding: BannerPreviewBinding()
        // );
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Image.network(
              image,
              height: 240,
              fit: BoxFit.fill,
            ),
          ),

        ],
      ),
    );
  }
}