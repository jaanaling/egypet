import 'package:egypet_trip/src/core/utils/app_icon.dart';
import 'package:egypet_trip/src/core/utils/icon_provider.dart';
import 'package:egypet_trip/src/feature/rituals/bloc/user_bloc.dart';
import 'package:egypet_trip/src/feature/rituals/utils/dialog_processor.dart';
import 'package:egypet_trip/ui_kit/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is! UserLoaded) {
          return const CupertinoActivityIndicator();
        }
        return Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.fromLTRB(16,0,16,140),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: isFavorite
                      ? state.dictionary
                          .where((element) => element.isFavorite == true)
                          .length
                      : state.dictionary.length,
                  separatorBuilder: (
                    context,
                    index,
                  ) =>
                      const Gap(16),
                  itemBuilder: (context, index) {
                    final item = isFavorite
                        ? state.dictionary
                            .where((element) => element.isFavorite == true)
                            .toList()[index]
                        : state.dictionary[index];
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        AppIcon(asset: IconProvider.title.buildImageUrl()),
                        Positioned(
                          top: 26,
                          right: 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedButton(
                                onPressed: () {
                                  context
                                      .read<UserBloc>()
                                      .add(DictionarySwitchFavorite(item));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          IconProvider.fa.buildImageUrl()),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      item.isFavorite ?? false
                                          ? CupertinoIcons.heart_fill
                                          : CupertinoIcons.heart,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(16),
                              AnimatedButton(
                                onPressed: () async {
                                  final speech = DialogProcessor()
                                    ..speechInit();
                                  speech.speakText(
                                      item.egypet.split(' (')[0], 'en-US');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(IconProvider.favour
                                          .buildImageUrl()),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      CupertinoIcons.volume_up,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 48, vertical: 16),
                          child: Text(
                            '${item.egypet} - ${item.english}',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 120,
              right: 0,
              child: AnimatedButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(IconProvider.favour.buildImageUrl()),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Icon(
                      isFavorite
                          ? CupertinoIcons.heart_fill
                          : CupertinoIcons.heart,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
