import 'package:egypet_trip/src/core/utils/app_icon.dart';
import 'package:egypet_trip/src/core/utils/icon_provider.dart';
import 'package:egypet_trip/src/core/utils/size_utils.dart';
import 'package:egypet_trip/src/feature/rituals/model/article.dart';
import 'package:egypet_trip/ui_kit/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ArticleScreen extends StatelessWidget {
  final Article article;
  const ArticleScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: false,
      left: false,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SizedBox(
          height: getHeight(context, percent: 0.9),
          child: Stack(alignment: Alignment.topCenter, children: [
            Container(
              alignment: Alignment.topCenter,
              height: getHeight(context, percent: 0.8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(IconProvider.artic.buildImageUrl()),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: getWidth(context, percent: 0.9),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedButton(
                            onPressed: () => context.pop(),
                            child: Icon(CupertinoIcons.chevron_left, size: 40)),
                        Gap(24),
                        Expanded(
                          child: Text(
                            article.title,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        SizedBox()
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(context, percent: 0.1)),
              child: SizedBox(
                width: getWidth(context, percent: 0.7),
                height: getHeight(context, percent: 0.6),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 166),
                  child: Text(
                    article.content,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
