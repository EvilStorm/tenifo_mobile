import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SmallRangeCalendar extends StatefulWidget {
  final DateTimeRange? initialRange;
  final Function(DateTimeRange range) onRangeSelected;

  const SmallRangeCalendar({
    super.key,
    this.initialRange,
    required this.onRangeSelected,
  });

  @override
  State<SmallRangeCalendar> createState() => _SmallRangeCalendarState();
}

class _SmallRangeCalendarState extends State<SmallRangeCalendar> {
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  DateTime _focusedDay = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;

  @override
  void initState() {
    super.initState();
    _rangeStart = widget.initialRange?.start;
    _rangeEnd = widget.initialRange?.end;
    _focusedDay = _rangeStart ?? DateTime.now();
    _rangeSelectionMode =
        (_rangeStart != null && _rangeEnd != null && _rangeStart != _rangeEnd)
            ? RangeSelectionMode.toggledOn
            : RangeSelectionMode.toggledOff;
  }

  void _handleRangeSelected(
    DateTime? start,
    DateTime? end,
    DateTime focusedDay,
  ) {
    setState(() {
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;

      if (start != null && end != null) {
        widget.onRangeSelected(DateTimeRange(start: start, end: end));
      } else if (start != null && end == null) {
        // 사용자가 하나만 클릭한 경우 → 단일 날짜
        widget.onRangeSelected(DateTimeRange(start: start, end: start));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now().subtract(const Duration(days: 365)),
      lastDay: DateTime.now().add(const Duration(days: 365)),
      focusedDay: _focusedDay,
      rangeStartDay: _rangeStart,
      rangeEndDay: _rangeEnd,
      rangeSelectionMode: _rangeSelectionMode,
      calendarFormat: CalendarFormat.month,
      availableCalendarFormats: const {CalendarFormat.month: 'Month'},
      headerStyle: const HeaderStyle(formatButtonVisible: false),
      onRangeSelected: _handleRangeSelected,
      onDaySelected: (selectedDay, focusedDay) {
        // 첫 번째 날짜 선택 시 단일 모드로 처리
        setState(() {
          _focusedDay = focusedDay;
          _rangeStart = selectedDay;
          _rangeEnd = selectedDay;
          _rangeSelectionMode = RangeSelectionMode.toggledOn;
        });
        widget.onRangeSelected(
          DateTimeRange(start: selectedDay, end: selectedDay),
        );
      },
      selectedDayPredicate: (day) {
        if (_rangeStart != null && _rangeEnd != null) {
          return day.isAtSameMomentAs(_rangeStart!) && _rangeStart == _rangeEnd;
        }
        return false;
      },
      calendarStyle: CalendarStyle(
        rangeHighlightColor: Colors.blue.shade100,
        withinRangeDecoration: BoxDecoration(
          color: Colors.blue.shade200,
          shape: BoxShape.circle,
        ),
        rangeStartDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        rangeEndDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
