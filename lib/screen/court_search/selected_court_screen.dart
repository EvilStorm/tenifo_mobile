import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/selected_court_provider.dart';

class SelectedCourtScreen extends ConsumerWidget {
  const SelectedCourtScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCourt = ref.watch(selectedCourtProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('선택된 코트')),
      body: Center(
        child:
            selectedCourt == null
                ? const Text('선택된 코트가 없습니다.')
                : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '이름: ${selectedCourt.name}',
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text('주소: ${selectedCourt.address}'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(selectedCourtProvider.notifier).clear();
                      },
                      child: const Text('선택 취소'),
                    ),
                  ],
                ),
      ),
    );
  }
}
