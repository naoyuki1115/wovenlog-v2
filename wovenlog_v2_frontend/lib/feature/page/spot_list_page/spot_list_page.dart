import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@immutable
class SpotListPage extends HookConsumerWidget {
  const SpotListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spot List Page'),
      ),
      body: Center(
        child: const Text('asdf'),
      ),
    );
  }
}
