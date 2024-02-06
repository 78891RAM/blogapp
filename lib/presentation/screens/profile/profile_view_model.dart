part of 'profile_imports.dart';

class ProfileViewModel {
  final Repository repository;

  ProfileViewModel({required this.repository});

  logOut(context) async {
    var data = await Authrepo().logOut(context);
    if (data.message.isNotEmptyAndNotNull) {
      Utils.deleteToken();
      VxToast.show(context, msg: data.message.toString());
      AutoRouter.of(context).replace(const AuthRoute());
    }
  }
}
