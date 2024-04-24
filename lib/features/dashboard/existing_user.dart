import 'package:flutter/material.dart';
import 'package:rekoda_app/features/Transactions/expenses.dart';
import 'package:rekoda_app/features/dashboard/widgets/cardwidget.dart';
import 'package:rekoda_app/features/reports/report.dart';

void main() {
  runApp(const MaterialApp(
    home: ExistingUser(),
  ));
}

class ExistingUser extends StatelessWidget {
  const ExistingUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/profile.png'),
          radius: 20,
        ),
        title: const Row(
          children: [
            Text(
              'Good morning, ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            Text(
              'John',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Revenue',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFDBFBE6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButton<String>(
                      value: 'This week ',
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {},
                      items: <String>['This week ']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 1.0),
              child: Text(
                '₦50,000',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CardWidget(
                      icon: Icons.menu,
                      title: 'Total Order',
                      backgroundColor: Color(0xFFFF947A),
                      bottomLeftText: '1',
                      bottomRightText: '+1,29%',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CardWidget(
                      icon: Icons.push_pin,
                      title: 'Product Sold',
                      backgroundColor: Color(0xFFE5FFF1),
                      bottomLeftText: '1',
                      bottomRightText: '+1,29%',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CardWidget(
                      icon: Icons.person,
                      title: 'New Customers',
                      backgroundColor: Color(0xFFBF83FF),
                      bottomLeftText: '1',
                      bottomRightText: '+1,29%',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Quick Actions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuickAction(
                        icon: Icons.attach_money,
                        label: 'Sales',
                      ),
                      QuickAction(
                        icon: Icons.money_off,
                        label: 'Expense',
                      ),
                      QuickAction(
                        icon: Icons.report,
                        label: 'Report',
                      ),
                      QuickAction(
                        icon: Icons.file_copy,
                        label: 'Template',
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF680DB3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/logo.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 8), // Add space between image and text

                              const Text(
                                'Rekoda Pro',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Get access to all features\nwhen you upgrade', // Break text into two lines
                                textAlign: TextAlign.center, // Adjust text alignment as needed
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  height: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 4), // Add space between text and buttons
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                // Handle cancel icon tap
                              },
                              icon: const Icon(Icons.cancel, color: Colors.white),
                            ),
                            const SizedBox(height: 8), // Add space between icon and button
                            ElevatedButton(
                              onPressed: () {
                                // Handle "Get Pro" button tap
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFFFFF)),
                              ),
                              child: const Text(
                                'Get Pro',
                                style: TextStyle(
                                  color: Color(0xFF680DB3),
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  height: 24 / 16, // line height calculation
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Enter Your Business Goals',
                          style: TextStyle(
                            color: Color(0xFF000000), // Title color
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        const SizedBox(height: 8), // Add space between title and subtitle
                        const Text(
                          'Stay motivated by setting a goal for your business',
                          style: TextStyle(
                            color: Color(0xFF6D6D6D), // Subtitle color
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        const SizedBox(height: 16), // Add space between subtitle and buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 153.767,
                              height: 37,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFFF5F5F5),

                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle "Record Sales" button tap
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                                  ),
                                  backgroundColor: const Color(0xffff3e5ff), // Background color of button
                                ),
                                child: const Text(
                                  'Record Sales',
                                  style: TextStyle(
                                    color: Color(0xFF680DB3), // Button text color
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ),
                            const SizedBox(width: 16), // Add space between buttons
                            Container(
                              width: 153.767,
                              height: 37,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,

                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle "Record Expense" button tap
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                                  ),
                                  backgroundColor: const Color(0xffff3e5ff), // Background color of button
                                ),
                                child: const Text(
                                  'Record Expense',
                                  style: TextStyle(
                                    color: Color(0xFF680DB3), // Button text color
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16), // Add space at the top
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Transaction History',
                                style: TextStyle(
                                  color: Color(0xFF000000), // Title color
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {
                                  // Handle "See All" button tap
                                },
                                child: const Text(
                                  'See All',
                                  style: TextStyle(
                                    color: Color(0xFF680DB3), // Button text color
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16), // Add space between "Transaction History" and buttons
                          SizedBox(
                            width: 380,
                            height: 48,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Equal horizontal padding
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFF5F5F5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
                                  children: [
                                    Container(
                                      width: 120, // Adjusted width to make space equal
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(0xFFFFFFFF),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Handle "Sales" button tap
                                        },
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          backgroundColor: const Color(0xFFFFFFFF),
                                        ),
                                        child: const Text(
                                          'Sales',
                                          style: TextStyle(
                                            color: Color(0xFF680DB3), // Button text color
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Roboto',
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 16), // Add space between buttons
                                    Container(
                                      width: 150, // Adjusted width to make space equal
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(0xFFF5F5F5),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Handle "Expense" button tap
                                        },
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          backgroundColor: const Color(0xFFF5F5F5),
                                        ),
                                        child: const Text(
                                          'Expense',
                                          style: TextStyle(
                                            color: Color(0xFFA3A4A4), // Button text color
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Roboto',
                                            letterSpacing: 1,
                                          ),
                                        ),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16), // Add space at the top
                      Row(
                        children: [
                          // Arrow down icon
                          const Icon(
                            Icons.arrow_downward,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 8), // Add space between icon and text
                          // Title: "Automobiles"
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Automobiles',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              // Subtitle: "April 04, 2024 05:32 am"
                              Text(
                                'April 04, 2024 05:32 am',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(), // Fill the space between subtitle and "N125.00" title
                          // Title: "N125.00"
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // Title: "N125.00"
                              const Text(
                                'N125.00',
                                style: TextStyle(
                                  color: Color(0xFF33CC4B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              // const SizedBox(height: 2), // Add space between "N125.00" and "Completed" button
                              // "Completed" button
                              ElevatedButton(
                                onPressed: () {
                                  // Handle "Completed" button tap
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF33CC4B),
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomAppBar(
          color: const Color(0xFF680DB3),
          height: 100,
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.dashboard, color: Colors.white),
                        onPressed: () {
                          // Handle dashboard action
                        },
                      ),
                      const Text('Dashboard', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.assignment, color: Colors.white),
                        onPressed: () {
                          // Navigate to Expenses screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Expenses()),
                          );
                        },
                      ),
                      const Text('Transaction', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.report, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Report()),
                          );
                        },
                      ),
                      const Text('Report', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.person, color: Colors.white),
                        onPressed: () {
                          // Handle profile action
                        },
                      ),
                      const Text('Profile', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

class QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;

  const QuickAction({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 32,
          color: const Color(0xFF680DB3),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF425166),
          ),
        ),
      ],
    );
  }
}
