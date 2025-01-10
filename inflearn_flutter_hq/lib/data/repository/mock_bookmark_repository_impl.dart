import 'package:inflearn_flutter_hq/domain/repository/bookmark_repository.dart';

class MockBookmarkRepositoryImpl implements BookmarkRepository {
  final _ids = <int>{2, 4, 6, 8, 10};

  @override
  Future<void> clear() async {
    _ids.clear();
  }

  @override
  Future<List<int>> getBookmarkIds() async {
    return _ids.toList();
  }

  @override
  Future<void> save(int id) async {
    _ids.add(id);
  }

  @override
  Future<void> toggle(int id) async {
    if (_ids.contains(id)) {
      unSave(id);
    } else {
      save(id);
    }
  }

  @override
  Future<void> unSave(int id) async {
    _ids.remove(id);
  }
}
