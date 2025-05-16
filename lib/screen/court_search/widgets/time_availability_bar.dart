import 'package:flutter/material.dart';

class TimeAvailabilityBar extends StatelessWidget {
  final List<int> availableTimes;

  const TimeAvailabilityBar({super.key, required this.availableTimes});

  @override
  Widget build(BuildContext context) {
    // 0부터 23까지 반복
    final hours = List.generate(24, (index) => index);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children:
            hours.map((hour) {
              final isAvailable = availableTimes.contains(hour);
              return Container(
                width: 44,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: isAvailable ? Colors.green : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '$hour',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isAvailable ? Colors.white : Colors.black45,
                      ),
                    ),
                    Icon(
                      isAvailable ? Icons.check_circle : Icons.cancel,
                      size: 16,
                      color: isAvailable ? Colors.white : Colors.black26,
                    ),
                  ],
                ),
              );
            }).toList(),
      ),
    );
  }
}
