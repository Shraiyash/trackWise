import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import '../../data/data.dart';
import '../../data/owed_data.dart';
import '../../data/future_data.dart';
import 'bar_chart_sample2.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  int _selectedSegment = 0; // 0 for Amount Owed, 1 for Future Income

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            const Text(
              'Stats',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Graph container
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: BarChartSample2(),
            ),
            const SizedBox(height: 30),
            // Custom sliding segmented control
            SlidingSegmentedControl(
              selectedIndex: _selectedSegment,
              onValueChanged: (int newValue) {
                setState(() {
                  _selectedSegment = newValue;
                });
              },
            ),
            const SizedBox(height: 12),
            // Display different content based on the selected segment
            Expanded(
              child: _selectedSegment == 0
                  ? ListView.builder(
                      itemCount: amountOwed.length,
                      itemBuilder: (context, int i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 17),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    amountOwed[i]['image']),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 15),
                                      Text(
                                        amountOwed[i]['name'],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        amountOwed[i]['amount_due'],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        amountOwed[i]['due_date'],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : ListView.builder(
                      itemCount: futureIncome.length,
                      itemBuilder: (context, int i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 17),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    futureIncome[i]['image']),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 15),
                                      Text(
                                        futureIncome[i]['name'],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        futureIncome[i]['amount'],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        futureIncome[i]['by'],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Custom sliding segmented control with a smooth sliding indicator.
class SlidingSegmentedControl extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onValueChanged;

  const SlidingSegmentedControl({
    super.key,
    required this.selectedIndex,
    required this.onValueChanged,
  });

  @override
  State<SlidingSegmentedControl> createState() =>
      _SlidingSegmentedControlState();
}

class _SlidingSegmentedControlState extends State<SlidingSegmentedControl> {
  final double controlHeight = 50;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = constraints.maxWidth;
      double segmentWidth = width / 2;
      return Container(
        height: controlHeight,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black38, width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              left: widget.selectedIndex == 0 ? 0 : segmentWidth,
              top: 0,
              child: Container(
                width: segmentWidth,
                height: controlHeight,
                decoration: BoxDecoration(
                  color: widget.selectedIndex == 0
                              ? Colors.red.shade400
                              : Colors.blue.shade700,
                  borderRadius: widget.selectedIndex == 0
                    ? BorderRadius.circular(12) : BorderRadius.circular(15)
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      widget.onValueChanged(0);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Amount Owed',
                        style: TextStyle(
                          color: widget.selectedIndex == 0
                              ? Colors.white
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      widget.onValueChanged(1);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Future Income',
                        style: TextStyle(
                          color: widget.selectedIndex == 1
                              ? Colors.white
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}