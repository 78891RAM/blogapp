// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blogapp/data/repositories/auth_repo.dart';
import 'package:blogapp/data/repositories/tags_repo.dart';

class Repository {
  final TagsRepo tagsRepo;
  final Authrepo authRepo;
  Repository({
    required this.tagsRepo,
    required this.authRepo,
  });
}
