import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wovenlog_v2_frontend/feature/spot/spot_model.dart';
import 'package:wovenlog_v2_frontend/repository/spot_list_repository.dart';

part 'spot_list_model.freezed.dart';

// SpotListのdataをキャッシュするProvider
final spotListProvider = Provider<SpotList>(
  (ref) {
    /// ApplicationService(APIを叩いてdataを取ってくる)
    /// spotListにListを代入する
    return SpotList(data: dummySpotList);
  },
);

@freezed
class SpotList with _$SpotList {
  const factory SpotList({
    required List<Spot> data,
  }) = _SpotListModel;

  const SpotList._();
}
