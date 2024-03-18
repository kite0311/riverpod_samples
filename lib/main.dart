import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_samples/sample_list/sample_list_page.dart';

import 'counter_button/counter_button.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: CounterButton(),
              ),
              Expanded(
                child: SampleListPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
