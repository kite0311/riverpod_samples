import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_samples/sample_list/sample_list.dart';

class SampleListPage extends ConsumerWidget {
  const SampleListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sampleList = ref.watch(sampleListNotifierProvider);
    final listView = ListView.builder(
      itemCount: sampleList.length,
      itemBuilder: (_, index) {
        final text = Text(sampleList[index].name);
        return Card(child: text);
      },
    );
    final button = FloatingActionButton(
      onPressed: () {
        final notifier = ref.read(sampleListNotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Icon(Icons.add),
    );
    return Scaffold(
      floatingActionButton: button,
      body: listView,
    );
  }
}
