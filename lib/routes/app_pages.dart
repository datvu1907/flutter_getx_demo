import 'package:get/get.dart';
import 'package:image_gallery/page/detail/detail_controller.dart';
import 'package:image_gallery/page/detail/detail_page.dart';
import 'package:image_gallery/page/home/home_controller.dart';
import 'package:image_gallery/page/home/home_page.dart';
part 'app_routes.dart';
class AppPages {
  static String initial = Routes.home;

  static navigateDefaultPage() async {
    AppPages.initial = Routes.home;
  }
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: GetBinding(Routes.home),
    ),
    GetPage(
      name: Routes.detail,
      page: () => const DetailPage(),
      binding: GetBinding(Routes.detail),
    )
  ];
}
class GetBinding extends Bindings {
  final String routerName;

  GetBinding(this.routerName);

  @override
  void dependencies() {
    switch (routerName) {
      case Routes.home:
        Get.lazyPut(() => HomeController());
        break;
      case Routes.detail:
        Get.lazyPut(() => DetailController());
        break;
      default:
        Get.lazyPut(() => HomeController());
        break;
    }

  }
}