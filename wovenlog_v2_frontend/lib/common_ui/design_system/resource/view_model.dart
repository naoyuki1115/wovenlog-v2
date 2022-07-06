import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class ViewModel {
  const ViewModel();

  Widget toWidget(
    BuildContext context,
    WidgetRef ref,
  );
}
