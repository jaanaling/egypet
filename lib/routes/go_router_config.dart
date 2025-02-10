import 'package:egypet_trip/src/feature/rituals/model/article.dart';
import 'package:egypet_trip/src/feature/rituals/presentation/article_screen.dart';
import 'package:egypet_trip/src/feature/rituals/presentation/articles_screen.dart';
import 'package:egypet_trip/src/feature/rituals/presentation/dialog_screen.dart';
import 'package:egypet_trip/src/feature/rituals/presentation/dictionary_screen.dart';
import 'package:egypet_trip/src/feature/rituals/presentation/photo_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../src/feature/splash/presentation/screens/splash_screen.dart';
import 'root_navigation_screen.dart';
import 'route_value.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final _photoNavigatorKey = GlobalKey<NavigatorState>();
final _dialogNavigatorKey = GlobalKey<NavigatorState>();
final _dictionaryNavigatorKey = GlobalKey<NavigatorState>();
final _articlesNavigatorKey = GlobalKey<NavigatorState>();

GoRouter buildGoRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouteValue.splash.path,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      pageBuilder: (context, state, navigationShell) {
        return NoTransitionPage(
          child: RootNavigationScreen(
            navigationShell: navigationShell,
          ),
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _photoNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.photo.path,
              builder: (context, state) => PhotoScreen(key: UniqueKey()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _dialogNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.dialog.path,
              builder: (context, state) => DialogScreen(key: UniqueKey()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _dictionaryNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.dictionary.path,
              builder: (context, state) => DictionaryScreen(key: UniqueKey()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _articlesNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: RouteValue.articles.path,
              builder: (context, state) => ArticlesScreen(key: UniqueKey()),
              routes: [
                GoRoute(
                  path: RouteValue.article.path,
                  pageBuilder: (context, state) => NoTransitionPage(
                    child: ArticleScreen(
                      key: UniqueKey(),
                      article: state.extra! as Article,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          child: CupertinoPageScaffold(
            backgroundColor: CupertinoColors.black,
            child: child,
          ),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: RouteValue.splash.path,
          builder: (BuildContext context, GoRouterState state) {
            return const SplashScreen();
          },
        ),
      ],
    ),
  ],
);
