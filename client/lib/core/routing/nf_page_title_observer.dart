// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:client/core/routing/nf_page.dart';
import 'package:client/features/navigation/provider/nf_navigator_state_provider.dart';

/// Watches for route changes and updates the browser tab title to match.
class NFPageTitleObserver extends NavigatorObserver {
  /// Constructs a new [NFPageTitleObserver].
  NFPageTitleObserver(this._navigatorStateProvider) {
    _navigatorStateProvider.stream.listen((event) {
      event.navigationStack.last.updateTitle();
    });
  }

  final NFNavigatorStateProvider _navigatorStateProvider;

  @override
  void didPush(Route route, Route? previousRoute) {
    final page = route.settings;
    if (page is NFPage && page.key == _navigatorStateProvider.currentPage.key) {
      page.updateTitle();
      page.title.addListener(page.updateTitle);
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    final page = newRoute?.settings;
    if (page is NFPage && page.key == _navigatorStateProvider.currentPage.key) {
      page.updateTitle();
      page.title.addListener(page.updateTitle);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    final page = route.settings;
    if (page is NFPage && page.key == _navigatorStateProvider.currentPage.key) {
      page.title.removeListener(page.updateTitle);
    }
    final prevPage = previousRoute?.settings;
    if (prevPage is NFPage) {
      prevPage.updateTitle();
    }
  }
}
