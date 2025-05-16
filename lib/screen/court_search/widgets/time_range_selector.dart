import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TimeSelector extends StatefulWidget {
  final void Function(int startHour, int endHour)? onChanged;

  const TimeSelector({super.key, this.onChanged});

  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {
  int startHour = 0;
  int endHour = 0;

  final List<int> hours = List.generate(24, (index) => index);

  void _onStartChanged(int newStart) {
    setState(() {
      startHour = newStart;

      // 종료 시간이 시작 시간보다 빠르면 자동 조정
      if (endHour <= startHour) {
        endHour = (startHour).clamp(0, 23);
        Fluttertoast.showToast(
          msg: "종료 시간이 시작 시간보다 빠릅니다.",
          gravity: ToastGravity.BOTTOM,
        );
      }

      widget.onChanged?.call(startHour, endHour);
    });
  }

  void _onEndChanged(int newEnd) {
    if (newEnd < startHour) {
      Fluttertoast.showToast(
        msg: "종료 시간이 시작 시간보다 빠릅니다.",
        gravity: ToastGravity.TOP_RIGHT,
      );
      setState(() {
        endHour = (startHour).clamp(0, 23);
      });
    } else {
      setState(() {
        endHour = newEnd;
      });
    }

    widget.onChanged?.call(startHour, endHour);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("시작:"),
        const SizedBox(width: 8),
        DropdownButton<int>(
          value: startHour,
          items:
              hours
                  .map(
                    (hour) =>
                        DropdownMenuItem(value: hour, child: Text('$hour시')),
                  )
                  .toList(),
          onChanged: (value) {
            if (value != null) _onStartChanged(value);
          },
        ),
        const SizedBox(width: 24),
        const Text("종료:"),
        const SizedBox(width: 8),
        DropdownButton<int>(
          value: endHour,
          items:
              hours
                  .map(
                    (hour) =>
                        DropdownMenuItem(value: hour, child: Text('$hour시')),
                  )
                  .toList(),
          onChanged: (value) {
            if (value != null) _onEndChanged(value);
          },
        ),
      ],
    );
  }
}
