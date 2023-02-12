import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_gallery/page/home/home_controller.dart';
import 'package:image_gallery/page/home/tab/list_all.dart';

class HomePage extends GetView<HomeController>{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return [
                SliverAppBar(
                  floating: true,
                  primary: true,
                  pinned: false,
                  backgroundColor: Colors.white,
                  expandedHeight: 100,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Column(
                      children: const [
                        SizedBox(
                          height: 70,
                        ),
                        // _buildHeader(),

                      ],
                    ),
                  ),

                ),
              ];

            }, body: DefaultTabController(
          length: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TabBar(
                      unselectedLabelColor: const Color(0xffB6B1CF),
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      controller: controller.tabController,
                      labelPadding: const EdgeInsets.only(left: 0, right: 20),
                      indicatorPadding:
                      const EdgeInsets.only(left: 0, right: 20),
                      indicatorColor: const Color(0xffFFBB00),
                      tabs: [
                        Obx(() => Text(
                          'All',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            color: controller.selectedThemeIndex.value == 0
                                ? const Color(0xff261A69)
                                : const Color(0xff261A69),
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                        Obx(() => Text(
                          'Bookmark'.tr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            color: controller.selectedThemeIndex.value == 1
                                ? const Color(0xff261A69)
                                : const Color(0xff261A69),
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                      ],
                    ),
                    _divider
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children:  [
                     ListPhoto(),
                    Container(),
                    // MyAlbum(),
                  ],
                ),
              )
            ],
          ),
        ),
        ));
  }
  final Divider _divider = const Divider(
    height: 1,
    color: Color(0xff8A82B4),
  );

}