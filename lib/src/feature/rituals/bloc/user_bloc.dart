import 'package:bloc/bloc.dart';
import 'package:egypet_trip/src/core/dependency_injection.dart';
import 'package:egypet_trip/src/feature/rituals/model/article.dart';
import 'package:egypet_trip/src/feature/rituals/model/dictionary.dart';
import 'package:egypet_trip/src/feature/rituals/repository/user_repository.dart';
import 'package:equatable/equatable.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository = locator<UserRepository>();

  UserBloc() : super(const UserLoading()) {
    on<UserLoadData>(_onUserLoadData);
    on<ArticleSwitchFavorite>(_onArticleSwitchFavorite);
    on<DictionarySwitchFavorite>(_onDictionarySwitchFavorite);
  }

  Future<void> _onArticleSwitchFavorite(
    ArticleSwitchFavorite event,
    Emitter<UserState> emit,
  ) async {
    final currentState = state;
    if (currentState is UserLoaded) {
      final updatedArticle =
          event.item.copyWith(isFavorite: !event.item.isFavorite!);
      await userRepository.updateArticle(updatedArticle);
      emit(
        currentState.copyWith(
          article: currentState.article
              .map((e) => e == event.item ? updatedArticle : e)
              .toList(),
        ),
      );
    }
  }

  Future<void> _onDictionarySwitchFavorite(
    DictionarySwitchFavorite event,
    Emitter<UserState> emit,
  ) async {
    final currentState = state;
    if (currentState is UserLoaded) {
      final updatedDictionary =
          event.item.copyWith(isFavorite: !event.item.isFavorite!);
      await userRepository.updateDictionary(updatedDictionary);
      emit(
        currentState.copyWith(
          dictionary: currentState.dictionary
              .map((e) => e == event.item ? updatedDictionary : e)
              .toList(),
        ),
      );
    }
  }

  Future<void> _onUserLoadData(
    UserLoadData event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserLoading());
    try {
      final article = await userRepository.loadArticle() ?? [];
      final dictionary = await userRepository.loadDictionary() ?? [];

      emit(
        UserLoaded(
          article: article,
          dictionary: dictionary,
        ),
      );
    } catch (e) {
      emit(UserError('Произошла ошибка при загрузке: $e'));
    }
  }
}
