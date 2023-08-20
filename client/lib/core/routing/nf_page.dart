// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Implementation of the [Page] class to be used for navigation.
class NFPage<T> extends Page<T> {
  /// Constructs a new [NFPage].
  NFPage(
    ValueKey<String> key, {
    required String name,
    required String title,
    required this.builder,
  })  : title = ValueNotifier<String>(title),
        super(
          key: key,
          name: name,
          restorationId: key.value,
        );

  /// Global page title.
  static const pageTitle = 'Naked Forex';

  /// The title to be displayed on the browser tab for this page.
  late final ValueNotifier<String> title;

  /// Builder method for the content of this page.
  final WidgetBuilder builder;

  /// Update browser tab title.
  void updateTitle() {
    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: '${title.value} | Naked Forex',
      ),
    );
  }

  @override
  Route<T> createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: builder,
    );
  }
}
