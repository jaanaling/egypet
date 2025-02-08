part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class UserLoading extends UserState {
  const UserLoading();
}

class UserLoaded extends UserState {
  final List<Article> article;
  final List<Dictionary> dictionary;


  const UserLoaded({
    required this.article,
    required this.dictionary,

  });

  UserLoaded copyWith({
    List<Article>? article,
    List<Dictionary>? dictionary,

  }) {
    return UserLoaded(
      article: article ?? this.article,
      dictionary: dictionary ?? this.dictionary,

    );
  }

  @override
  List<Object?> get props => [article, dictionary];
}

class UserError extends UserState {
  final String message;
  const UserError(this.message);

  @override
  List<Object?> get props => [message];
}
