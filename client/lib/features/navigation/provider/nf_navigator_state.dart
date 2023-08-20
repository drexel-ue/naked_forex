// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:client/core/routing/nf_page.dart';

part 'nf_navigator_state.freezed.dart';

typedef NavigationStack = List<NFPage>;

@Freezed()
class NFNavigatorState with _$NFNavigatorState {
  const factory NFNavigatorState({
    @Default(<NFPage>[]) NavigationStack navigationStack,
  }) = _NFNavigatorState;
}
