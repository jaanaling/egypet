import 'package:egypet_trip/src/feature/rituals/model/article.dart';
import 'package:egypet_trip/src/feature/rituals/model/dictionary.dart';

import '../../../core/utils/json_loader.dart';

class UserRepository {
  final String key = 'dictionary';
  final String key2 = 'article';

  Future<List<Dictionary>?> loadDictionary() async {
    final list = await JsonLoader.loadData<Dictionary>(
      key,
      'assets/json/$key.json', // путь к json с пользователем
      (json) => Dictionary.fromMap(json),
    );
    if (list.isNotEmpty) {
      return list;
    }
    return null;
  }

  Future<void> updateDictionary(Dictionary updated) async {
    return JsonLoader.modifyDataList<Dictionary>(
      key,
      updated,
      () async {
        final list = await loadDictionary();
        return list ?? [];
      },
      (item) => item.toMap(),
      (itemList) async {
        if (itemList.isNotEmpty) {
          itemList[0] = updated;
        } else {
          itemList.add(updated);
        }
      },
    );
  }

  Future<List<Article>?> loadArticle() async {
    final article = await JsonLoader.loadData<Article>(
      key2,
      'assets/json/$key2.json', // путь к json с пользователем
      (json) => Article.fromMap(json),
    );
    if (article.isNotEmpty) {
      return article;
    }
    return null;
  }

  Future<void> updateArticle(Article updated) async {
    return JsonLoader.modifyDataList<Article>(
      key2,
      updated,
      () async {
        final list = await loadArticle();
        return list ?? [];
      },
      (item) => item.toMap(),
      (itemList) async {
        if (itemList.isNotEmpty) {
          itemList[0] = updated;
        } else {
          itemList.add(updated);
        }
      },
    );
  }
}
