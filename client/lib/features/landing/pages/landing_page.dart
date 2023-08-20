// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:client/core/routing/nf_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  static const routeName = '/';

  static NFPage buildPage() {
    return NFPage(
      const ValueKey<String>(routeName),
      name: routeName,
      title: 'Welcome',
      builder: (_) => const LandingPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          'Landing',
        ),
      ),
    );
  }
}
