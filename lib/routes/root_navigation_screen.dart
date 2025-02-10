import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../src/core/utils/icon_provider.dart';

class RootNavigationScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const RootNavigationScreen({
    super.key,
    required this.navigationShell,
  });

  @override
  State<RootNavigationScreen> createState() => _RootNavigationScreenState();
}

class _RootNavigationScreenState extends State<RootNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    IconProvider.back.buildImageUrl(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          widget.navigationShell,
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AppBottomBar(
              selectedIndex: widget.navigationShell.currentIndex,
              onTap: _onTap,
            ),
          ),
        ],
      ),
    );
  }

  void _onTap(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: true,
    );
  }
}

class AppBottomBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onTap;
  const AppBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<TabItem> items = [
      TabItem(
        icon: Icons.translate,
      ),
      TabItem(
        icon: CupertinoIcons.mic_fill,
      ),
      TabItem(
        icon: CupertinoIcons.book_fill,
      ),
      TabItem(
        icon: CupertinoIcons.doc_text_fill,
      ),
    ];
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12, right: 4, left: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Material(
            child: BottomBarFloating(
              items: items,
              backgroundColor: Color(0xFFBA5B04),
              color: Color(0xFF612300),
              colorSelected: Color(0xFFFFFFFF),
              indexSelected: selectedIndex,
              paddingVertical: 15,
              iconSize: 30,
              pad: 2,
              onTap: (int index) => onTap(index),
            ),
          ),
        ),
      ),
    );
  }
}
