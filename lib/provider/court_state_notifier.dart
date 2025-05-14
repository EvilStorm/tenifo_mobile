import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/court.dart';
import '../network/api_client.dart';
import '../network/dio_client.dart';

final courtNotifierProvider = StateNotifierProvider<CourtNotifier, List<Court>>(
  (ref) {
    final client = ApiClient(createDioClient());
    return CourtNotifier(client);
  },
);

class CourtNotifier extends StateNotifier<List<Court>> {
  final ApiClient client;

  CourtNotifier(this.client) : super([]) {
    fetchCourts();
  }

  Future<void> fetchCourts() async {
    final courts = await client.getCourts();
    state = [...state, ...courts];
  }

  void updateCourtName(int id, String newName) {
    state = [
      for (final c in state)
        if (c.id == id) c.copyWith(name: newName) else c,
    ];
  }

  void clear() {
    state = [];
  }
}
