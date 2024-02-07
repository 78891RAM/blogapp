import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/home/home_model.dart';
import '../datasources/remote/api_client.dart';
import '../datasources/remote/api_endpoint_urls.dart';

class PostsRepo extends ApiClient {
  Future<PostsModel> getHomePosts() async {
    try {
      final response = await getRequest(path: ApiEndpointsUrls.getposts);
      if (response.statusCode == 200) {
        final responseData = PostsModel.fromJson(response.data);
        Vx.log(responseData);
        return responseData;
      } else {
        PostsModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      PostsModel();
    }
    return PostsModel();
  }
}
