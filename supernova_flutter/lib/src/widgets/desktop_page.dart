import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart' hide Title;

import 'adaptive_page.dart';

class DesktopPage extends StatelessWidget {
  // If put inside [SliverPadding], [SliverFillRemaining] fills the remaining
  // space _plus_ padding. Therefore, we add the padding inside the non-sliver
  // widget.
  DesktopPage({
    super.key,
    required this.title,
    this.actions = const [],
    this.isFullwidth = false,
    required Widget child,
  }) : builder = ((horizontalMargin) => SliverToBoxAdapter(
              child:
                  Padding(padding: _getPadding(horizontalMargin), child: child),
            ));
  DesktopPage.center({
    super.key,
    required this.title,
    this.actions = const [],
    this.isFullwidth = false,
    required Widget child,
  }) : builder = ((horizontalMargin) => SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: _getPadding(horizontalMargin),
                child: Center(child: child),
              ),
            ));

  DesktopPage.sliver({
    super.key,
    required this.title,
    this.actions = const [],
    this.isFullwidth = false,
    required Widget sliver,
  }) : builder = ((horizontalMargin) => SliverPadding(
              padding: _getPadding(horizontalMargin),
              sliver: sliver,
            ));

  static const _verticalPadding = 32.0;
  static EdgeInsets _getPadding(double horizontalMargin) =>
      EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: _verticalPadding,
      );

  static const titleTopPadding = 32.0;

  final String title;
  final List<Widget> actions;
  final bool isFullwidth;
  final AdaptivePageBodyBuilder builder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptivePage(
        isFullwidth: isFullwidth,
        builder: (horizontalMargin) => CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                  top: titleTopPadding,
                  right: 32,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(title, style: context.textTheme.titleLarge),
                    ),
                    ...actions,
                  ],
                ),
              ),
            ),
            builder(horizontalMargin),
          ],
        ),
      ),
    );
  }
}
