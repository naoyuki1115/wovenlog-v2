import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wovenlog_v2_frontend/feature/spot/spot_model.dart';
import 'package:wovenlog_v2_frontend/repository/spot_list_repository.dart';

part 'spot_list_model.freezed.dart';

// SpotListのdataをキャッシュするProvider
final spotListProvider = Provider<SpotListModel>(
  (ref) {
    /// ApplicationService(APIを叩いてdataを取ってくる)
    /// spotListにListを代入する
    return SpotListModel(data: dummySpotList);
  },
);

@freezed
class SpotListModel with _$SpotListModel {
  const factory SpotListModel({
    required List<Spot> data,
  }) = _SpotListModel;

  const SpotListModel._();
}
