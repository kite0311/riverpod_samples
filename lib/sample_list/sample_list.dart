import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_samples/sample_list/sample_list_model.dart';

part 'sample_list.g.dart';

@riverpod
class SampleListNotifier extends _$SampleListNotifier {
  @override
  List<SampleListModel> build() {
    final listData = List<SampleListModel>.generate(5, (index) {
      final id = index + 1;
      return SampleListModel(
        id: id,
        name: 'name$id',
        description: 'description$id',
        isFavorite: false,
      );
    });

    /// initial data
    return listData;
  }

  void updateState() {
    final oldState = state;
    final newState = [...oldState, SampleListModel.create()];
    state = newState;
  }
}
