import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Charts extends StatelessWidget {
  const Charts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 104,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle "This Week" button tap
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF680DB3)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            height: 1,
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(104, 36)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.04)),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: const Text(
                        'This Week',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 104,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle "Last Week" button tap
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFF7D8895)),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            height: 1,
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(104, 36)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.04)),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: const Text(
                        'Last Week',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 104,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle "Last Month" button tap
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFF7D8895)),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            height: 1,
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(104, 36)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.04)),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: const Text(
                        'Last Month',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 104,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle "Last Year" button tap
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFF7D8895)),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            height: 1,
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(104, 36)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.04)),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: const Text(
                        'Last Year',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 16),
                SizedBox(
                  width: 184,
                  height: 146,
                  child: Stack(
                    children: [
                      Container(
                        width: 184,
                        height: 146,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: const Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              blurRadius: 48,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Goal achievement',
                                    style: TextStyle(
                                      color: Color(0xFFA3AED0),
                                      fontFamily: 'DM Sans',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.119,
                                      height: 1.7129,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        color: Colors.green,
                                        size: 24,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '+4.91%',
                                        style: TextStyle(
                                          color: Color(0xFF05CD99),
                                          fontFamily: 'DM Sans',
                                          fontSize: 5.111,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.102,
                                          height: 8.518 / 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '1% ',
                                    style: TextStyle(
                                      color: Color(0xFF2B3674),
                                      fontFamily: 'DM Sans',
                                      fontSize: 14.48,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.29,
                                      height: 1.23529,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'you reached your goal by 1%',
                                    style: TextStyle(
                                      color: Color(0xFFA3AED0),
                                      fontFamily: 'DM Sans',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.119,
                                      height: 1.7129,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: 156.093,
                          height: 64.748,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color(0xFFFFFFFF),
                          ),
                          child: BarChart(
                            BarChartData(
                              barGroups: [
                                BarChartGroupData(x: 0, barRods: [
                                  BarChartRodData(
                                    y: 0,
                                    colors: [
                                      const Color(0xFFED18FF),
                                      const Color(0xFFFF1818),
                                    ],
                                  ),
                                ]),
                                BarChartGroupData(x: 1, barRods: [
                                  BarChartRodData(
                                    y: 2,
                                    colors: [
                                      const Color(0xFFED18FF),
                                      const Color(0xFFFF1818),
                                    ],
                                  ),
                                ]),
                                BarChartGroupData(x: 2, barRods: [
                                  BarChartRodData(
                                    y: 3,
                                    colors: [
                                      const Color(0xFFED18FF),
                                      const Color(0xFFFF1818),
                                    ],
                                  ),
                                ]),
                                BarChartGroupData(x: 3, barRods: [
                                  BarChartRodData(
                                    y: 2,
                                    colors: [
                                      const Color(0xFFED18FF),
                                      const Color(0xFFFF1818),
                                    ],
                                  ),
                                ]),
                                BarChartGroupData(x: 4, barRods: [
                                  BarChartRodData(
                                    y: 2,
                                    colors: [
                                      const Color(0xFFED18FF),
                                      const Color(0xFFFF1818),
                                    ],
                                  ),
                                ]),
                                BarChartGroupData(x: 5, barRods: [
                                  BarChartRodData(
                                    y: 3,
                                    colors: [
                                      const Color(0xFFED18FF),
                                      const Color(0xFFFF1818),
                                    ],
                                  ),
                                ]),
                                BarChartGroupData(x: 6, barRods: [
                                  BarChartRodData(
                                    y: 2,
                                    colors: [
                                      const Color(0xFFED18FF),
                                      const Color(0xFFFF1818),
                                    ],
                                  ),
                                ]),
                                BarChartGroupData(x: 7, barRods: [
                                  BarChartRodData(
                                    y: 0,
                                    colors: [
                                      const Color(0xFFED18FF),
                                      const Color(0xFFFF1818),
                                    ],
                                  ),
                                ]),
                              ],
                              titlesData: FlTitlesData(
                                leftTitles: SideTitles(showTitles: false),
                                bottomTitles: SideTitles(
                                  showTitles: true,
                                  getTextStyles: (value) => const TextStyle(color: Colors.black, fontSize: 14),
                                  margin: 10,
                                  getTitles: (double value) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return '';
                                      case 1:
                                        return '02';
                                      case 2:
                                        return '03';
                                      case 3:
                                        return '02';
                                      case 4:
                                        return '02';
                                      case 5:
                                        return '03';
                                      case 6:
                                        return '02';
                                      case 7:
                                        return '';
                                      default:
                                        return '';
                                    }
                                  },
                                ),
                              ),
                              borderData: FlBorderData(show: false),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 20,
                            elevation: 16,
                            style: const TextStyle(
                              color: Color(0xFFA3AED0),
                              fontFamily: "DM Sans",
                              fontSize: 5.111,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.102,
                            ),
                            onChanged: (String? newValue) {
                              // handle dropdown change
                            },
                            items: <String>['Monthly', 'Quarterly', 'Yearly']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    // width: 170,
                    // height: 146,
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 170,
                            height: 146,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color(0xFFFFFFFF),

                            ),
                            child: Container(
                              width: 60.901,
                              height: 60.901,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.451),

                              ),
                              child: PieChart(
                                PieChartData(
                                  sections: [
                                    PieChartSectionData(
                                      value: 63,
                                      color: const Color(0xFF4318FF),
                                      showTitle: false,
                                    ),
                                    PieChartSectionData(
                                      value: 23,
                                      color: const Color(0xFF6AD2FF),
                                      showTitle: false,
                                    ),
                                    PieChartSectionData(
                                      value: 12,
                                      color: const Color(0xFFEFF4FB),
                                      showTitle: false,
                                    ),




                                  ],
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 0,
                                  pieTouchData: PieTouchData(enabled: false),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            left: 8,
                            child: Text(
                              'Your Pie Chart',
                              style: TextStyle(
                                color: Color(0xFF2B3674),
                                fontFamily: 'DM Sans',
                                fontSize: 6.814,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.136,
                                height: 11.925 / 6.814,
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) => Positioned(
                              top: 8,
                              right: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white, // Set background color of the dropdown button to white
                                  borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius


                                ),
                                child: DropdownButton<String>(
                                  value: 'Monthly', // Setting 'Monthly' as the default value
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  iconSize: 24,
                                  elevation: 16,
                                  isDense: true,
                                  menuMaxHeight: 120, // Adjust this according to your text size
                                  style: const TextStyle(
                                    color: Color(0xFFA3AED0), // Text color set to #A3AED0
                                    fontFamily: "DM Sans",
                                    fontSize: 5.111,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.102,
                                    height: 8.518 / 5.111, // Adjust line-height and font-size ratio
                                  ),
                                  dropdownColor: const Color(0xFFFFFFFF), // Set dropdown menu background color to white
                                  onChanged: (String? newValue) {
                                    // handle dropdown change
                                  },
                                  items: <String>['Monthly', 'Quarterly', 'Yearly']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Container(
                                        // color: value == 'Monthly' ? const Color(0xFFFFFFFF): null, // Set background color to transparent for 'Monthly', null for others
                                        alignment: Alignment.centerLeft,
                                        child: Text(value),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),




                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 3.407,
                                      height: 3.407,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF4318FF),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Text(
                                      'Sales',
                                      style: TextStyle(
                                        color: Color(0xFFA3AED0),
                                        fontFamily: 'DM Sans',
                                        fontSize: 8,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.102,
                                        height: 8.518 / 5.111,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  '63%',
                                  style: TextStyle(
                                    color: Color(0xFF2B3674),
                                    fontFamily: 'DM Sans',
                                    fontSize: 7.666,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.153,
                                    height: 12.776 / 7.666,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 3.407,
                                      height: 3.407,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF4318FF),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Text(
                                      'Expense',
                                      style: TextStyle(
                                        color: Color(0xFFA3AED0),
                                        fontFamily: 'DM Sans',
                                        fontSize: 5.111,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.102,
                                        height: 8.518 / 5.111,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  '25%',
                                  style: TextStyle(
                                    color: Color(0xFF2B3674),
                                    fontFamily: 'DM Sans',
                                    fontSize: 7.666,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.153,
                                    height: 12.776 / 7.666,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // const SizedBox(width: 16),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
