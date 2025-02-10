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
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.expand,
          children: [
            AppIcon(asset: IconProvider.artic.buildImageUrl()),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(30, 166, 30, 166),
              child: Text(
                article.content,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              top: 66,
              child: SizedBox(
                width: getWidth(context, percent: 0.8),
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
          ]),
    );
  }
}
