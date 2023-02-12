import 'package:image_gallery/network/provider.dart';

class AppRepository{
  static Future<dynamic> getListImage({required int page}) {

    var query = {'client_id' : 'MaZJ_QmmeBz1MW3p4wa2ZvldKdlJLknEHLHLJN5qVy0',
              'page': page.toString()};
    return AppProvider().getMethod(path: 'https://api.unsplash.com/photos/', query: query).then((value) {

      print(value);
    });
  }
}
