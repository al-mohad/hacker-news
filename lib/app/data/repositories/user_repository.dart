import 'package:hacker_news/app/data/models/author/author.dart';

import '../network/network.dart';

class UserRepository {
  late NetworkProvider _networkProvider;

  UserRepository() {
    _networkProvider = NetworkProvider.instance;
  }

  Future<Author> getUser({
    required String queryParam,
    required String username,
  }) {
    return _networkProvider.apiClient.fetchUser(queryParam, username);
  }
}
