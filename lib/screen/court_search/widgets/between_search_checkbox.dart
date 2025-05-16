import 'package:flutter/material.dart';

class BetweenSearchCheckbox extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const BetweenSearchCheckbox({
    super.key,
    this.initialValue = false,
    required this.onChanged,
  });

  @override
  State<BetweenSearchCheckbox> createState() => _BetweenSearchCheckboxState();
}

class _BetweenSearchCheckboxState extends State<BetweenSearchCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: '사이 검색은 시작 시간과 종료 시간내 비어있는 코트를 검색합니다.',
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
              });
              widget.onChanged(isChecked);
            },
          ),
          const Text('사이 검색'),
        ],
      ),
    );
  }
}
