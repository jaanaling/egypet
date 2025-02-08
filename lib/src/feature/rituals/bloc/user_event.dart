part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class UserLoadData extends UserEvent {
  const UserLoadData();
}

class ArticleSwitchFavorite extends UserEvent {
  final Article item;

  const ArticleSwitchFavorite(this.item);

  @override
  List<Object> get props => [item];
}

class DictionarySwitchFavorite extends UserEvent {
  final Dictionary item;

  const DictionarySwitchFavorite(this.item);

  @override
  List<Object> get props => [item];
}
