import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

import '../localization.dart';
import '../widgets/desktop_page.dart';

class DesktopNotFoundPage extends StatelessWidget {
  const DesktopNotFoundPage(this.uri);

  final Uri uri;

  @override
  Widget build(BuildContext context) {
    return DesktopPage.center(
      title: context.supernovaL10n.pageNotFound,
      child: _NotFoundPageContent(uri),
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage(this.uri);

  final Uri uri;

  @override
  Widget build(BuildContext context) =>
      Scaffold(body: _NotFoundPageContent(uri));
}

class _NotFoundPageContent extends StatelessWidget {
  const _NotFoundPageContent(this.uri);

  final Uri uri;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.supernovaL10n.pageNotFound,
          style: context.textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          context.supernovaL10n.pageNotFoundMessage(uri),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
