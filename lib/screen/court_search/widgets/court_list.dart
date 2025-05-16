import 'package:flutter/material.dart';

import '../../../model/court.dart';
import 'time_tables.dart';

class CourtListView extends StatefulWidget {
  final List<CourtReservationInfo> courts;

  const CourtListView({super.key, required this.courts});

  @override
  State<CourtListView> createState() => _CourtListViewState();
}

class _CourtListViewState extends State<CourtListView>
    with TickerProviderStateMixin {
  int? openedIndex;

  final List<Color> bgColors = [
    Colors.grey.shade100,
    Colors.blue.shade50,
    Colors.green.shade50,
    Colors.orange.shade50,
    Colors.purple.shade50,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: widget.courts.length,
      itemBuilder: (_, index) {
        final cort = widget.courts[index];
        final isOpen = openedIndex == index;

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: bgColors[index % bgColors.length],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 코트 제목 + 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      cort.cort,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        openedIndex = isOpen ? null : index;
                      });
                    },
                    child: Text(isOpen ? '닫기' : '상세 보기'),
                  ),
                ],
              ),
              // 확장 영역
              Visibility(
                visible: isOpen,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: TimeTables(data: cort.timeInfo),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
