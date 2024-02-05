import 'package:blogapp/data/datasources/remote/api_endpoint_urls.dart';
import 'package:blogapp/presentation/screens/tags/tags_imports.dart';
import 'package:velocity_x/velocity_x.dart';

import '../datasources/remote/api_client.dart';

class TagsRepo extends ApiClient {
  Future<TagsModel> getAllTags() async {
    try {
      final response = await getRequest(path: ApiEndpointsUrls.tags);
      if (response.statusCode == 200) {
        final responseData = TagsModel.fromJson(response.data);
        Vx.log(responseData);
        return responseData;
      } else {
        TagsModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      TagsModel();
    }
    return TagsModel();
  }
}
