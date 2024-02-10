part of 'home_imports.dart';

class HomeViewModel {
  final Repository repository;

  HomeViewModel({required this.repository});

  final VelocityBloc<PostsModel> homePostBloc =
      VelocityBloc<PostsModel>(PostsModel());

  fetchAllPosts() async {
    var postData = await repository.postsRepo.getHomePosts();

    if (postData.status == 1) {
      homePostBloc.onUpdateData(postData);
    }
  }
}
