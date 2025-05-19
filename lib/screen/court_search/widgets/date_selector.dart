import 'package:court/screen/court_search/widgets/date_range_calendar.dart';
import 'package:court/screen/widgets/positive_button.dart';
import 'package:flutter/material.dart';

import '../../../utils/size_scale.dart';

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
            borderRadius: BorderRadius.circular(
              SizeScale.instance.basicSpaceAddHalf,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(SizeScale.instance.basicSpace * 2),
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
                SizedBox(height: SizeScale.instance.basicSpaceAddHalf),
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
      return '${selectedRange.start.toLocal().day.toString()} ~ ${selectedRange.end.toLocal().day.toString()}일';
    } else {
      return '${selectedRange.start.toLocal().day.toString()}일';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeScale.instance.basicSpace,
        vertical: SizeScale.instance.basicSpace / 2,
      ),
      child: Row(
        children: [
          ElevatedButton.icon(
            onPressed: _openCalendarPopup,
            icon: const Icon(Icons.calendar_today),
            label: Text(
              '날짜',
              style: SizeScale.instance.textScaleStyle(fontSize: 14),
            ),
          ),
          if (selectedRange != null)
            Row(
              children: [
                SizedBox(width: SizeScale.instance.basicSpace),
                Text(
                  getDateStr(selectedRange),
                  style: SizeScale.instance.textScaleStyle(fontSize: 14),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
