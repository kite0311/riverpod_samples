import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_samples/counter_button/counter_num.dart';

class CounterButton extends ConsumerWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterNum = ref.watch(counterNumNotifierProvider);
    ref.listen(counterNumNotifierProvider, (oldState, newState) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$oldStateから$newState へ加算されました'),
        ),
      );
    });
    final button = ElevatedButton(
      onPressed: () {
        final notifier = ref.read(counterNumNotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Text('ボタン'),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$counterNum'),
        button,
      ],
    );
  }
}
