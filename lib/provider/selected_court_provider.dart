import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/court.dart';

final selectedCourtProvider =
    StateNotifierProvider<SelectedCourtNotifier, Court?>((ref) {
      return SelectedCourtNotifier();
    });

class SelectedCourtNotifier extends StateNotifier<Court?> {
  SelectedCourtNotifier() : super(null);

  void select(Court court) {
    state = court;
  }

  void clear() {
    state = null;
  }
}
