import 'package:blogapp/data/datasources/remote/api_constants.dart';
import 'package:blogapp/data/datasources/remote/api_endpoint_urls.dart';
import 'package:blogapp/presentation/screens/auth/login/login_imports.dart';
import 'package:velocity_x/velocity_x.dart';

import '../datasources/remote/api_client.dart';

class Authrepo extends ApiClient {
  Future<AuthModel> loginUser(String email, String password) async {
    Map body = {"email": email, "password": password};
    try {
      final response =
          await postRequest(path: ApiEndpointsUrls.login, body: body);

      if (response.statusCode == 200) {
        final responseData = AuthModel.fromJson(response.data);
        return responseData;
      } else {
        AuthModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      AuthModel();
    }
    return AuthModel();
  }
}
