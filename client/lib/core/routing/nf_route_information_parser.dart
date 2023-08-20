// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:client/core/routing/nf_page.dart';
import 'package:client/features/landing/pages/landing_page.dart';

class NFRouteInformationParser extends RouteInformationParser<NFPage> {
  @override
  Future<NFPage> parseRouteInformation(RouteInformation routeInformation) async {
    // final uri = routeInformation.uri;

    return LandingPage.buildPage();
  }

  @override
  RouteInformation? restoreRouteInformation(NFPage configuration) {
    if (configuration.name == null) {
      return null;
    }

    return RouteInformation(
      uri: Uri.parse(configuration.name!),
    );
  }
}
