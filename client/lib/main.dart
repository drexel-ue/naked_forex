// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 🌎 Project imports:
import 'package:client/core/routing/nf_route_information_parser.dart';
import 'package:client/core/routing/nf_router_delegate.dart';
import 'package:client/core/ui/nf_theme.dart';
import 'package:client/features/navigation/provider/nf_navigator_state_provider.dart';

void main() {
  runApp(const ProviderScope(child: NFApp()));
}

class NFApp extends ConsumerStatefulWidget {
  const NFApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NFAppState();
}

class _NFAppState extends ConsumerState<NFApp> {
  late final Future<void> _routingSetupFuture;
  late final NFRouteInformationParser _routeInformationParser;
  final _navigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'main-navigation-key',
  );

  @override
  void initState() {
    super.initState();
    _routingSetupFuture = _initializeRouting();
  }

  Future<void> _initializeRouting() async {
    final navigatorStateProvider = ref.read(nfNavigatorStateProviderProvider);
    NFRouterDelegate.init(_navigatorKey, navigatorStateProvider);
    _routeInformationParser = NFRouteInformationParser();
  }

  void _onTapDown() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _routingSetupFuture,
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return GestureDetector(
          onTapDown: (_) => _onTapDown(),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Naked Forex',
            theme: nfTheme,
            routerDelegate: NFRouterDelegate.instance,
            routeInformationParser: _routeInformationParser,
          ),
        );
      },
    );
  }
}
