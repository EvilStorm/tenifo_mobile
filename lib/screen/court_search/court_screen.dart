import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/court_state_notifier.dart';
import '../../provider/selected_court_provider.dart';
import 'selected_court_screen.dart';

class CourtScreen extends ConsumerWidget {
  const CourtScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courts = ref.watch(courtNotifierProvider);
    final courtsNotifier = ref.read(courtNotifierProvider.notifier);

    final selectedNotifier = ref.read(selectedCourtProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Court List')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              courtsNotifier.fetchCourts();
            },
            child: Text('추가'),
          ),
          SizedBox(height: 200, child: SelectedCourtScreen()),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: courts.length,
              itemBuilder: (_, index) {
                final court = courts[index];
                return Column(
                  children: [
                    ListTile(
                      title: Text(court.name),
                      subtitle: Text(court.address),
                      trailing: ElevatedButton(
                        onPressed: () {
                          selectedNotifier.select(court);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('${court.name} 선택됨')),
                          );
                        },
                        child: const Text('선택'),
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                        itemCount: court.cortReservationInfos.length,
                        itemBuilder: (_, index) {
                          final cort = court.cortReservationInfos[index];
                          return ListTile(
                            title: Text(cort.cort),
                            subtitle: Text(cort.timeInfo.toString()),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
