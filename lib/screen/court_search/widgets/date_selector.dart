import 'package:court/screen/court_search/widgets/date_range_calendar.dart';
import 'package:court/screen/widgets/positive_button.dart';
import 'package:flutter/material.dart';

class DateSelector extends StatefulWidget {
  final ValueChanged<DateTimeRange> onChanged;
  const DateSelector({super.key, required this.onChanged});

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  DateTimeRange? selectedRange;

  Future<void> _openCalendarPopup() async {
    DateTimeRange? tempRange = selectedRange;

    final result = await showDialog<DateTimeRange>(
      context: context,
      builder: (context) {
        DateTimeRange? innerTempRange = tempRange;

        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            height: 440, // ✅ 달력을 제대로 렌더링하기 위한 고정 높이
            child: Column(
              children: [
                Expanded(
                  child: SmallRangeCalendar(
                    initialRange: innerTempRange,
                    onRangeSelected: (range) {
                      innerTempRange = range;
                    },
                  ),
                ),
                const SizedBox(height: 12),
                PositiveButton(
                  text: '선택',
                  onPressed: () {
                    if (innerTempRange != null) {
                      Navigator.of(context).pop(innerTempRange);
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );

    if (result != null) {
      setState(() {
        selectedRange = result;
      });
      widget.onChanged(result);
    }
  }

  String getDateStr(DateTimeRange? selectedRange) {
    if (selectedRange == null) {
      return '';
    }

    if (selectedRange.start != selectedRange.end) {
      return '${selectedRange.start.toLocal().toString().split(' ')[0]} ~ ${selectedRange.end.toLocal().toString().split(' ')[0]}';
    } else {
      return selectedRange.start.toLocal().toString().split(' ')[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          ElevatedButton.icon(
            onPressed: _openCalendarPopup,
            icon: const Icon(Icons.calendar_today),
            label: const Text('날짜 선택'),
          ),
          const SizedBox(width: 12),
          if (selectedRange != null)
            Text(
              getDateStr(selectedRange),
              style: const TextStyle(fontSize: 14),
            ),
        ],
      ),
    );
  }
}
