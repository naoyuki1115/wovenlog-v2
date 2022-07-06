import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wovenlog_v2_frontend/common_ui/design_system/resource/view_model.dart';

part 'spot_list_page_view_model.freezed.dart';

final spotListPageFutureProvider = FutureProvider<SpotListPageViewModel>(
  (ref) async {
    return ref.watch(spotListPageViewModelProvider);
  },
);

// SpotListのdataをキャッシュするProvider
final spotListProvider = Provider<List<Spot>>(
  (ref) {
    /// ApplicationService(APIを叩いてdataを取ってくる)
    /// spotListにListを代入する
    ///
    /// spotList = SpotListRepository.fetchData();

    return spotList;
  },
);

// spotListProvider（データキャッシュ）に変更があれば、ViewModelインスタンスを再生成する
final spotListPageViewModelProvider = Provider<SpotListPageViewModel>(
  (ref) => SpotListPageViewModel(
    spotList: ref.watch(spotListProvider),
  ),
);

// Widgetを組み合わせたLayoutの雛形
@freezed
class SpotListPageViewModel extends ViewModel with _$SpotListPageViewModel {
  const factory SpotListPageViewModel({
    required List<Spot> spotList,
  }) = _SpotListPageViewModel;

  const SpotListPageViewModel._();

  @override
  Widget toWidget(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: spotList.length,
      itemBuilder: itemBuilder,
    );
  }
}
