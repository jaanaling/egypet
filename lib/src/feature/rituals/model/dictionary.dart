// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Dictionary {
  final String english;
  final String egypet;
  final bool? isFavorite;

  Dictionary({
    required this.english,
    required this.egypet,
    this.isFavorite = false,
  });

  Dictionary copyWith({
    String? english,
    String? egypet,
    bool? isFavorite,
  }) {
    return Dictionary(
      english: english ?? this.english,
      egypet: egypet ?? this.egypet,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'english': english,
      'egypet': egypet,
      'isFavorite': isFavorite,
    };
  }

  factory Dictionary.fromMap(Map<String, dynamic> map) {
    return Dictionary(
      english: map['english'] as String,
      egypet: map['egypet'] as String,
      isFavorite: map['isFavorite'] != null ? map['isFavorite'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dictionary.fromJson(String source) => Dictionary.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Dictionary(english: $english, egypet: $egypet, isFavorite: $isFavorite)';

  @override
  bool operator ==(covariant Dictionary other) {
    if (identical(this, other)) return true;
  
    return 
      other.english == english &&
      other.egypet == egypet &&
      other.isFavorite == isFavorite;
  }

  @override
  int get hashCode => english.hashCode ^ egypet.hashCode ^ isFavorite.hashCode;
}
