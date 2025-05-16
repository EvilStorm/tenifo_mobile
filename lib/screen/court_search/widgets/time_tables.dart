import 'package:flutter/material.dart';

import '../../../model/court.dart';
import 'time_availability_bar.dart';

class TimeTables extends StatelessWidget {
  const TimeTables({super.key, required this.data});

  final List<TimeInfo> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          data.map((dayInfo) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  Text(
                    '${dayInfo.day}일',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: TimeAvailabilityBar(availableTimes: dayInfo.times),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
