import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wovenlog_v2_frontend/feature/page/spot_list_page/view_model/spot_list_page_view_model.dart';

@immutable
class SpotListPage extends HookConsumerWidget {
  const SpotListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spot List Page'),
      ),
      body: ref.watch(spotListPageFutureProvider).when(
            data: (data) => data.toWidget(context, ref),
            error: error,
            loading: CircularProgressIndicator(),
          ),
    );
  }
}
