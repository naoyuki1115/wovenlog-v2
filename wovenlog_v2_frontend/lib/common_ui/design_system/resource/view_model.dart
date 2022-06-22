import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

abstract class ViewModel {
  const ViewModel();

  Widget toWidget(
    BuildContext context,
    WidgetRef ref,
  );
}
