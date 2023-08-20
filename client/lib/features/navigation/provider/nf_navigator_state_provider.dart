// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 🌎 Project imports:
import 'package:client/core/routing/nf_page.dart';
import 'package:client/features/landing/pages/landing_page.dart';
import 'package:client/features/navigation/provider/nf_navigator_state.dart';

final nfNavigatorStateProviderProvider = Provider<NFNavigatorStateProvider>((ref) {
  return NFNavigatorStateProvider.create();
});

final nfNavigatorStateProvider = StateNotifierProvider<NFNavigatorStateProvider, NFNavigatorState>((ref) {
  return ref.read(nfNavigatorStateProviderProvider);
});

class NFNavigatorStateProvider extends StateNotifier<NFNavigatorState> {
  NFNavigatorStateProvider._(super.state);

  static NFNavigatorStateProvider create([String? initialRoute]) {
    return NFNavigatorStateProvider._(
      NFNavigatorState(
        navigationStack: [
          LandingPage.buildPage(),
        ],
      ),
    );
  }

  NFPage get currentPage => state.navigationStack.last;

  bool onPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) {
      return false;
    }
    state = state.copyWith(
      navigationStack: state.navigationStack.where((el) => el != route.settings).toList(),
    );
    return true;
  }

  Future<void> handleSystemNavigation(NFPage page) async {
    final pages = state.navigationStack;
    if (pages.none((el) => el.key == page.key)) {
      push(page);
    } else if (pages.length > 1) {
      final previousPage = pages[pages.length - 2];
      if (page.key == previousPage.key) {
        state = state.copyWith(
          navigationStack: pages.take(pages.length - 1).toList(),
        );
      } else {
        push(page);
      }
    }
  }

  void push(NFPage page, {bool clearStack = false}) {
    final oldPages = state.navigationStack.where((el) => el.key != page.key).toList();

    state = state.copyWith(
      navigationStack: [
        if (!clearStack) ...oldPages,
        page,
      ],
    );
  }
}
