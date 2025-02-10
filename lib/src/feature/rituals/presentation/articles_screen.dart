import 'package:egypet_trip/routes/route_value.dart';
import 'package:egypet_trip/src/core/utils/app_icon.dart';
import 'package:egypet_trip/src/core/utils/icon_provider.dart';
import 'package:egypet_trip/src/feature/rituals/bloc/user_bloc.dart';
import 'package:egypet_trip/ui_kit/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is! UserLoaded) {
          return const CupertinoActivityIndicator();
        }
        return ListView.separated(
          itemCount: state.article.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          separatorBuilder: (
            context,
            index,
          ) =>
              const Gap(16),
          itemBuilder: (context, index) {
            final item = state.article[index];
            return Stack(
              alignment: Alignment.center,
              children: [
                AppIcon(asset: IconProvider.title.buildImageUrl()),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                  child: Text(
                    '${item.title}',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: AnimatedButton(
                      onPressed: () {
                        context.push(
                          '${RouteValue.articles.path}/${RouteValue.article.path}',
                          extra: item,
                        );
                      },
                      child: AppIcon(asset: IconProvider.read.buildImageUrl())),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
