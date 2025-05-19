import 'package:flutter/material.dart';

import '../../../model/court.dart';
import '../../../utils/size_scale.dart';
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
              padding: EdgeInsets.symmetric(
                vertical: SizeScale.instance.basicSpace,
              ),
              child: Row(
                children: [
                  Text(
                    '${dayInfo.day}일',
                    style: SizeScale.instance.textScaleStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(width: SizeScale.instance.basicSpace),
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
