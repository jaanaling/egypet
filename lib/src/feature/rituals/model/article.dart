// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Article {
  final String title;
  final String content;
  final bool? isFavorite; 

  Article({
    required this.title,
    required this.content,
    this.isFavorite = false,
  });

  Article copyWith({
    String? title,
    String? content,
    bool? isFavorite,
  }) {
    return Article(
      title: title ?? this.title,
      content: content ?? this.content,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'content': content,
      'isFavorite': isFavorite,
    };
  }

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      title: map['title'] as String,
      content: map['content'] as String,
      isFavorite: map['isFavorite'] != null ? map['isFavorite'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Article.fromJson(String source) => Article.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Article(title: $title, content: $content, isFavorite: $isFavorite)';

  @override
  bool operator ==(covariant Article other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.content == content &&
      other.isFavorite == isFavorite;
  }

  @override
  int get hashCode => title.hashCode ^ content.hashCode ^ isFavorite.hashCode;
}
