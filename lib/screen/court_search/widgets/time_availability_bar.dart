import 'package:flutter/material.dart';

import '../../../utils/size_scale.dart';

class TimeAvailabilityBar extends StatelessWidget {
  final List<int> availableTimes;

  const TimeAvailabilityBar({super.key, required this.availableTimes});

  @override
  Widget build(BuildContext context) {
    // 0부터 23까지 반복
    final hours = List.generate(24, (index) => index);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(
        horizontal: SizeScale.instance.basicSpace,
        vertical: SizeScale.instance.basicSpace / 2,
      ),
      child: Row(
        children:
            hours.map((hour) {
              final isAvailable = availableTimes.contains(hour);
              return Container(
                width: 44,
                margin: const EdgeInsets.symmetric(horizontal: 1),
                padding: EdgeInsets.all(SizeScale.instance.basicSpace / 2),
                decoration: BoxDecoration(
                  color: isAvailable ? Colors.green : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(
                    SizeScale.instance.basicSpace,
                  ),
                  border: Border.all(color: Colors.black12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '$hour',
                      style: SizeScale.instance.textScaleStyle(
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
