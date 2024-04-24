import 'package:flutter/material.dart';
import 'package:rekoda_app/features/Transactions/custom_bottom_navigation_bar.dart';
import 'package:rekoda_app/features/reports/widgets/charts.dart';

class ExistingUser extends StatelessWidget {
  const ExistingUser({super.key});

  Widget buildContainer({
    Widget? icon,
    Widget? content,
    bool hasIconBackground = true,
    String? dynamicText,
  }) {
    return Container(
      width: 170, // Adjust the width of the container
      height: 120, // Adjust the height of the container
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: const Color(0xFFFFFFFF), // or use your custom color
      ),
      child: Row(
        children: [
          Container(
            width: 30, // Adjust the width of the icon container
            height: 30, // Adjust the height of the icon container
            decoration: hasIconBackground
                ? BoxDecoration(
              borderRadius: BorderRadius.circular(25), // Making it circular
              color: const Color(0xFFFAF4FF),
            )
                : null,
            child: Center(child: icon),
          ),
          const SizedBox(width: 10), // Adding space between icon and text
          Expanded(
            child: content ?? Container(),
          ),
          Text(
            dynamicText ?? '',
            style: const TextStyle(
              color: Colors.green, // Change this to the color you want
              fontFamily: "DM Sans",
              fontSize: 12.0, // Adjust the font size
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDynamicContainer({
    required IconData icon,
    required String title,
    required String value,
    required String percentage,
  }) {
    return Container(
      width: 179.905, // Adjust the width of the container
      height: 119, // Adjust the height of the container
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      padding: const EdgeInsets.all(10.0), // Padding added
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xFFFFF4DE), // or use your custom color
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 22,
              height: 22,
              child: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF001733),
                      fontFamily: "Roboto",
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 1.2, // Corresponds to 120%
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: const TextStyle(
                      color: Color(0xFF25282C),
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 1.2, // Corresponds to 120%
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 44,
              height: 22,
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromRGBO(255, 148, 122, 0.22),
              ),
              child: Center(
                child: Text(
                  percentage,
                  style: const TextStyle(
                    color: Color(0xFFFF947A),
                    fontFamily: "Roboto",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7E7E7),
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
              // Handle more_vert action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Charts(),
            const SizedBox(height: 10), // Adding space between charts and cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer(
                  icon: const Icon(
                    Icons.bar_chart,
                    size: 16.219,
                    color: Color(0xFFA93EFF),
                  ),
                  content: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Earnings',
                        style: TextStyle(
                          color: Color(0xFFA3AED0),
                          fontFamily: "DM Sans",
                          fontSize: 12.0, // Adjust the font size
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '₦298.02',
                        style: TextStyle(
                          color: Color(0xFF2B3674),
                          fontFamily: "DM Sans",
                          fontSize: 20.0, // Adjust the font size
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                buildContainer(
                  content: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Spend this month',
                        style: TextStyle(
                          color: Color(0xFFA3AED0),
                          fontFamily: "DM Sans",
                          fontSize: 12.0, // Adjust the font size
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '₦570.58',
                        style: TextStyle(
                          color: Color(0xFF2B3674),
                          fontFamily: "DM Sans",
                          fontSize: 20.0, // Adjust the font size
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10), // Adding space between the rows of cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer(
                  hasIconBackground: false, // Set to false to remove the icon background
                  content: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sales',
                        style: TextStyle(
                          color: Color(0xFFA3AED0),
                          fontFamily: "DM Sans",
                          fontSize: 12.0, // Adjust the font size
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '₦964.59',
                        style: TextStyle(
                          color: Color(0xFF2B3674),
                          fontFamily: "DM Sans",
                          fontSize: 20.0, // Adjust the font size
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 180, // Adjust the width of the container
                  height: 120, // Adjust the height of the container
                  margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  padding: const EdgeInsets.all(10.0), // Padding added
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: const Color(0xFFFFFFFF), // or use your custom color
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Your Balance',
                                style: TextStyle(
                                  color: Color(0xFFA3AED0),
                                  fontFamily: "DM Sans",
                                  fontSize: 9.046,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.181,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                '₦2,390',
                                style: TextStyle(
                                  color: Color(0xFF2B3674),
                                  fontFamily: "DM Sans",
                                  fontSize: 15.507,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.31,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuButton(
                        itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            value: 'Nigeria',
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/nigeria_flag.png', // Adjust image path
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(width: 8), // Add some space between the flag and the text
                                const Text('Nigeria'),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 'Kenya',
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/nigeria_flag.png', // Adjust image path
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(width: 8), // Add some space between the flag and the text
                                const Text('Kenya'),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 'Ghana',
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/nigeria_flag.png', // Adjust image path
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(width: 8), // Add some space between the flag and the text
                                const Text('Ghana'),
                              ],
                            ),
                          ),
                        ],
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/nigeria_flag.png', // Adjust image path
                              width: 20,
                              height: 20,
                            ),
                            const Icon(Icons.arrow_drop_down), // Adding dropdown arrow icon
                          ],
                        ),
                        onSelected: (value) {
                          // Handle flag selection
                        },
                      ),
                    ],
                  ),
                )

              ],
            ),
            const SizedBox(height: 10), // Adding space between the cards and the text
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Account Breakdown',
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontFamily: "Roboto",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    height: 1.2, // Corresponds to 120%
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildDynamicContainer(
                    icon: Icons.shopping_bag,
                    title: 'Total Order',
                    value: '1',
                    percentage: '+1,29%',
                  ),
                  buildDynamicContainer(
                    icon: Icons.shopping_bag,
                    title: 'Total Order',
                    value: '1',
                    percentage: '+1,20%',
                  ),
                  // Add more dynamic containers here
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildDynamicContainer(
                    icon: Icons.shopping_bag,
                    title: 'Total Order',
                    value: '1',
                    percentage: '+1,29%',
                  ),
                  buildDynamicContainer(
                    icon: Icons.shopping_bag,
                    title: 'Total Order',
                    value: '1',
                    percentage: '+1,20%',
                  ),
                  // Add more dynamic containers here
                ],
              ),
            ),


          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
