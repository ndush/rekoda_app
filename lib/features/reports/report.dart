import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rekoda_app/features/Transactions/custom_bottom_navigation_bar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:rekoda_app/features/reports/existing_user.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Report'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Handle three dots action
            },
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFFE7E7E7),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
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
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(104, 36)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text('This Week'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
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
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(104, 36)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text('Last Week'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
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
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(104, 36)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text('Last Month'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
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
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(104, 36)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text('Last Year'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: 386,
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.04),
                      blurRadius: 48,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: -3.14 / 4,
                      child: SizedBox(
                        width: 235,
                        height: 235,
                        child: PieChart(
                          PieChartData(
                            sections: [
                              PieChartSectionData(
                                value: 50,
                                color: const Color(0xFF2A64D9),
                                title: '',
                                titleStyle: const TextStyle(
                                  color: Color(0xFF8D9096),
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                ),
                              ),
                              PieChartSectionData(
                                value: 50,
                                color: const Color(0xFF39C9CD),
                                title: '',
                                titleStyle: const TextStyle(
                                  color: Color(0xFF8D9096),
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                            sectionsSpace: 0,
                            centerSpaceRadius: 120,
                            centerSpaceColor: Colors.transparent,
                          ),
                          swapAnimationDuration: const Duration(milliseconds: 800),
                        ),
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '0.00',
                          style: TextStyle(
                            color: Color(0xFF26272A),
                            fontFamily: 'Roboto',
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Amount Spend This Week',
                          style: TextStyle(
                            color: Color(0xFF8D9096),
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 5,
                      child: SizedBox(
                        height: 14,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: SvgPicture.asset('assets/a.svg'),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Income',
                              style: TextStyle(
                                color: Color(0xFF8D9096),
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              ),
                            ),
                            const SizedBox(width: 16),
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: SvgPicture.asset('assets/b.svg'),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Expense',
                              style: TextStyle(
                                color: Color(0xFF8D9096),
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExistingUser(),
                ),
              );
            },
            backgroundColor: const Color(0xFF680DB3),
            shape: const CircleBorder(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExistingUser(),
                ),
              );
            },
            child: const Text(
              'Click here to add transaction',
              style: TextStyle(
                color: Color(0xFF8D9096),
                fontFamily: 'Roboto',
                fontSize: 12,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
                // textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
