// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:client/core/routing/nf_page.dart';
import 'package:client/features/navigation/pages/nf_navigator.dart';
import 'package:client/features/navigation/provider/nf_navigator_state_provider.dart';

/// A delegate that is used by the [Router] widget to build and configure a
/// navigating widget.
class NFRouterDelegate extends RouterDelegate<NFPage> with ChangeNotifier, PopNavigatorRouterDelegateMixin<NFPage> {
  /// Constructs a new [NFRouterDelegate].
  NFRouterDelegate._(
    this._navigatorKey,
    this._navigatorStateProvider,
  ) {
    _navigatorStateProvider.stream.listen((event) {
      notifyListeners();
    });
  }

  static NFRouterDelegate init(
    GlobalKey<NavigatorState> navigatorKey,
    NFNavigatorStateProvider navigatorStateProvider,
  ) {
    return instance = NFRouterDelegate._(
      navigatorKey,
      navigatorStateProvider,
    );
  }

  static late final NFRouterDelegate instance;

  final GlobalKey<NavigatorState> _navigatorKey;
  final NFNavigatorStateProvider _navigatorStateProvider;

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  NFPage? get currentConfiguration => _navigatorStateProvider.currentPage;

  @override
  Future<void> setNewRoutePath(NFPage configuration) async {
    return await _navigatorStateProvider.handleSystemNavigation(configuration);
  }

  @override
  Widget build(BuildContext context) {
    return Overlay(
      initialEntries: [
        OverlayEntry(
          opaque: true,
          maintainState: true,
          builder: (BuildContext context) {
            return const NFNavigator();
          },
        ),
      ],
    );
  }
}
