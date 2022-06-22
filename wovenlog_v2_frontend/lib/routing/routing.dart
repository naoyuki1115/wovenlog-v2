import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wovenlog_v2_frontend/feature/page/spot_list_page/spot_list_page.dart';

final routerProvider = Provider.autoDispose<GoRouter>(
  (ref) => GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SpotListPage(),
      ),
    ],
  ),
);
