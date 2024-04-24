import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rekoda_app/features/Transactions/custom_bottom_navigation_bar.dart';

class ExistingUserSales extends StatefulWidget {
  const ExistingUserSales({super.key});

  @override
  _ExistingUserSalesState createState() => _ExistingUserSalesState();
}

class _ExistingUserSalesState extends State<ExistingUserSales> {
  bool _showBottomSheet = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _showBottomSheet = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      backgroundColor: const Color(0xFFD8A9FF),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF680DB3),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Handle Expenses button tap
                        },
                        child: const Text(
                          'Expenses',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xFF680DB3),
                          width: 1,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Handle Sales button tap
                        },
                        child: const Text(
                          'Sales',
                          style: TextStyle(
                            color: Color(0xFF680DB3),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                // Handle plus button tap
              },
              icon: const Icon(Icons.add, color: Colors.black),
              iconSize: 24,
            ),
            IconButton(
              onPressed: () {
                // Handle menu icon tap
              },
              icon: const Icon(Icons.more_vert, color: Colors.black),
              iconSize: 32,
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                const SizedBox(height: 8),
                const Text(
                  'January',
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Handle backward arrow tap
                        },
                        icon: const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFF212121), size: 24),
                      ),
                    ),
                    const Text(
                      'N 10000',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Outfit',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Handle forward arrow tap
                        },
                        icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF212121), size: 24),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: _buildContent(),
          ),
          if (_showBottomSheet)
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Month Budget: N15000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '65%',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 366,
                        height: 16,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:const LinearProgressIndicator(
                            value: 0.65,
                            backgroundColor: Color(0xFFD9D9D9),
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFA93EFF)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x0fffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'All Expenses',
                          style: TextStyle(
                            color: Color(0xFF8009E7),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'All Sales',
                          style: TextStyle(
                            color: Color(0xFF1F2A37),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: Color(0xFF3D3D3D),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/SalesIcon.svg',
                        width: 40,
                        height: 44,
                      ),
                      title: const Text(
                        'Automobiles',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        'April 04, 2024 05:32 am',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      trailing: SizedBox(
                        width: 100, // Adjust width as needed
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'N125.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  width: 0.5,
                                  color: const Color(0xFF33CC4B),
                                ),
                                color: const Color.fromRGBO(51, 204, 75, 0.07),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Completed',
                                    style: TextStyle(
                                      color: Color(0xFF33CC4B),
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/SalesIcon.svg',
                        width: 40,
                        height: 44,
                      ),
                      title: const Text(
                        'SpareParts',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        'April 04, 2024 05:32 am',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      trailing: SizedBox(
                        width: 100, // Adjust width as needed
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'N200.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  width: 0.5,
                                  color: const Color(0xFF33CC4B),
                                ),
                                color: const Color.fromRGBO(51, 204, 75, 0.07),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Completed',
                                    style: TextStyle(
                                      color: Color(0xFF33CC4B),
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/SalesIcon.svg',
                        width: 40,
                        height: 44,
                      ),
                      title: const Text(
                        'Jewelerys',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        'April 04, 2024 05:32 am',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      trailing: SizedBox(
                        width: 100, // Adjust width as needed
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'N300.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  width: 0.5,
                                  color: const Color(0xFF33CC4B),
                                ),
                                // Adjust background color using BoxDecoration
                                color: const Color.fromRGBO(51, 204, 75, 0.07),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Similar to justify-content: center
                                children: [
                                  SizedBox(width: 10), // Similar to gap: 10px
                                  Text(
                                    'Completed',
                                    style: TextStyle(
                                      color: Color(0xFF33CC4B),
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
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
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  Widget _buildContent() {
    // Your main content here
    return Container(
      color: const Color(0xFFD8A9FF),
    );
  }
}
