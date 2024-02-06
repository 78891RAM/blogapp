part of 'login_imports.dart';

class LoginViewModel {
  final Repository repository;

  LoginViewModel({required this.repository});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);
  loginUser(context) async {
    isLoadingBloc.onUpdateData(true);
    var loginData = await repository.authRepo
        .loginUser(emailController.text, passwordController.text, context);

    if (loginData.accessToken != null) {
      Utils.saveToken(loginData.accessToken.toString());
      AutoRouter.of(context).push(const BottomNavBarRoute());
    }
    isLoadingBloc.onUpdateData(false);
  }
}
