import 'package:blogapp/data/datasources/remote/api_endpoint_urls.dart';
import 'package:blogapp/data/models/messagemodel.dart';
import 'package:blogapp/presentation/screens/auth/login/login_imports.dart';
import 'package:velocity_x/velocity_x.dart';

import '../datasources/remote/api_client.dart';

class Authrepo extends ApiClient {
  Future<AuthModel> loginUser(String email, String password, context) async {
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
      VxToast.show(context, msg: e.toString());

      Vx.log(e);
      AuthModel();
    }
    return AuthModel();
  }

  Future<MessageModel> logOut(context) async {
    try {
      final response = await postRequest(
        path: ApiEndpointsUrls.logout,
      );

      if (response.statusCode == 200) {
        final responseData = MessageModel.fromJson(response.data);
        return responseData;
      } else {
        MessageModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      Vx.log(e);
      MessageModel();
    }
    return MessageModel();
  }
}
