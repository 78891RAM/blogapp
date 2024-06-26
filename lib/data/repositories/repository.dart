// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blogapp/data/repositories/auth_repo.dart';
import 'package:blogapp/data/repositories/posts_repo.dart';
import 'package:blogapp/data/repositories/profile_repo.dart';
import 'package:blogapp/data/repositories/tags_repo.dart';

class Repository {
  final TagsRepo tagsRepo;
  final Authrepo authRepo;
  final PostsRepo postsRepo;
  final ProfileRepo profileRepo;
  Repository({
    required this.tagsRepo,
    required this.authRepo,
    required this.postsRepo,
    required this.profileRepo,
  });
}
