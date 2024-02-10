import 'package:blogapp/presentation/screens/profile/profile_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../datasources/remote/api_client.dart';
import '../datasources/remote/api_endpoint_urls.dart';

class ProfileRepo extends ApiClient {
  Future<ProfileModel> getUserProfile() async {
    try {
      final response = await getRequest(
          path: ApiEndpointsUrls.getUserposts, isTokenRequired: true);
      if (response.statusCode == 200) {
        final responseData = ProfileModel.fromJson(response.data);
        Vx.log(responseData);
        return responseData;
      } else {
        ProfileModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      ProfileModel();
    }
    return ProfileModel();
  }
}
