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

  Future<void> fetchSearchCourts({
    required int startTime,
    required int endTime,
    bool searchBetweenCorver = false,
    int? dayStart, // ⚠️ 선택
    int? dayEnd,
  }) async {
    final results = await client.searchCourts(
      start: startTime,
      end: endTime,
      matchType: searchBetweenCorver ? 1 : 2,
      dayStart: dayStart,
      dayEnd: dayEnd,
    );
    state = results.data;
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
