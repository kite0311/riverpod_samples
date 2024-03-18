import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_num.g.dart';

@riverpod
class CounterNumNotifier extends _$CounterNumNotifier {
  @override
  int build() {

    /// initial data
    return 0;
  }

  void updateState() {
    final oldState = state;

    final newState = oldState + 1;

    state = newState;
  }
}