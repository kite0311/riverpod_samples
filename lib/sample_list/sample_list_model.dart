import 'dart:math';

class SampleListModel {
  int id;
  String name;
  String description;
  bool isFavorite;

  SampleListModel({
    required this.id,
    required this.name,
    required this.description,
    required this.isFavorite,
  });

  static SampleListModel create() {
    return SampleListModel(
      id: Random().nextInt(100),
      name: 'name',
      description: 'description',
      isFavorite: false,
    );
  }
}
