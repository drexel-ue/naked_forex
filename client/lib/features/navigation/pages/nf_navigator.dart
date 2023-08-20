// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 🌎 Project imports:
import 'package:client/core/routing/nf_page_title_observer.dart';
import 'package:client/core/routing/nf_router_delegate.dart';
import 'package:client/features/navigation/provider/nf_navigator_state_provider.dart';

class NFNavigator extends ConsumerWidget {
  const NFNavigator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateProvider = ref.watch(nfNavigatorStateProviderProvider);
    final state = ref.watch(nfNavigatorStateProvider);

    return Material(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return FocusScope(
            debugLabel: 'Main navigator scope',
            autofocus: true,
            child: Navigator(
              key: NFRouterDelegate.instance.navigatorKey,
              restorationScopeId: 'main navigator restoration id',
              pages: state.navigationStack,
              onPopPage: stateProvider.onPopPage,
              observers: [
                NFPageTitleObserver(stateProvider),
              ],
            ),
          );
        },
      ),
    );
  }
}
