import 'package:court/screen/court_search/widgets/between_search_checkbox.dart';
import 'package:court/screen/court_search/widgets/court_list.dart';
import 'package:court/screen/court_search/widgets/date_selector.dart';
import 'package:court/screen/court_search/widgets/time_range_selector.dart';
import 'package:court/screen/widgets/positive_button.dart';
import 'package:court/utils/size_scale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/court_state_notifier.dart';

class CourtScreen extends ConsumerStatefulWidget {
  const CourtScreen({super.key});

  @override
  ConsumerState<CourtScreen> createState() => _CourtScreenState();
}

class _CourtScreenState extends ConsumerState<CourtScreen> {
  DateTimeRange? selectedRange;
  int startTime = 0;
  int endTime = 0;
  bool searchBetweenCorver = true;

  @override
  Widget build(BuildContext context) {
    final courts = ref.watch(courtNotifierProvider);
    final courtsNotifier = ref.read(courtNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '코트 정보',
          style: SizeScale.instance.textScaleStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DateSelector(
                  onChanged: (selectedDate) {
                    selectedRange = selectedDate;
                  },
                ),
                SizedBox(width: SizeScale.instance.basicSpace),
                TimeSelector(
                  onChanged: (start, end) {
                    startTime = start;
                    endTime = end;
                    // 시간 기반 필터 처리 가능
                  },
                ),
                SizedBox(width: SizeScale.instance.basicSpace),
                BetweenSearchCheckbox(
                  onChanged: (value) {
                    searchBetweenCorver = !value;
                  },
                ),
                SizedBox(width: SizeScale.instance.basicSpaceAddHalf),
                PositiveButton(
                  text: '검색',
                  onPressed: () {
                    courtsNotifier.fetchSearchCourts(
                      startTime: startTime,
                      endTime: endTime,
                      searchBetweenCorver: searchBetweenCorver,
                      dayStart: selectedRange?.start.day,
                      dayEnd: selectedRange?.end.day,
                    );
                  },
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: courts.length,
              itemBuilder: (_, index) {
                final court = courts[index];

                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: SizeScale.instance.basicSpaceAddHalf,
                    vertical: SizeScale.instance.basicSpace,
                  ),
                  padding: EdgeInsets.all(SizeScale.instance.basicSpaceAddHalf),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      SizeScale.instance.basicSpaceAddHalf,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          court.name,
                          style: SizeScale.instance.textScaleStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        subtitle: Text(
                          court.address,
                          style: SizeScale.instance.textScaleStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      CourtListView(courts: court.cortReservationInfos),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
