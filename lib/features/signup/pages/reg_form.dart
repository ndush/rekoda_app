import 'package:flutter/material.dart';
import 'package:rekoda_app/features/dashboard/new_user.dart';

class RegForm extends StatefulWidget {
  const RegForm({super.key});

  @override
  _RegFormState createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the back arrow
        title: const Text('Registration Form'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Tell us about your business so we can tailor the product to your needs',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  height: 1.2, // line height
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'What is your business name?',
                style: TextStyle(
                  color: Color(0xFF111928), // gray-900
                  fontFamily: 'Roboto',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  height: 1.2, // line height
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 380.0,
                height: 56.0,
                padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0x33BCBBC1), // Gray-Main20
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Enter business name',
                          hintStyle: TextStyle(
                            color: Color(0xFF888888), // Color-Neutral-Neutral-400
                            fontFamily: 'Roboto',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            height: 1.2, // line height
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'What industry does your business belong?',
                style: TextStyle(
                  color: Color(0xFF111928), // gray-900
                  fontFamily: 'Roboto',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  height: 1.2, // line height
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 380.0,
                height: 56.0,
                padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0x33BCBBC1), // Gray-Main20
                ),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Select option',
                    hintStyle: TextStyle(
                      color: Color(0xFF111928), // gray-900
                      fontFamily: 'Roboto',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      height: 1.2, // line height
                    ),
                  ),
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    // Do something with the value selected
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'What type of business do you have?',
                style: TextStyle(
                  color: Color(0xFF111928), // gray-900
                  fontFamily: 'Roboto',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  height: 1.2, // line height
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 380.0,
                height: 56.0,
                padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0x33BCBBC1), // Gray-Main20
                ),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Select option',
                    hintStyle: TextStyle(
                      color: Color(0xFF111928), // gray-900
                      fontFamily: 'Roboto',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      height: 1.2, // line height
                    ),
                  ),
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    // Do something with the value selected
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'How many employees do you have?',
                style: TextStyle(
                  color: Color(0xFF111928), // gray-900
                  fontFamily: 'Roboto',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  height: 1.2, // line height
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 380.0,
                height: 56.0,
                padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0x33BCBBC1), // Gray-Main20
                ),

              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Where is your business based?',
                style: TextStyle(
                  color: Color(0xFF111928), // gray-900
                  fontFamily: 'Roboto',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  height: 1.2, // line height
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 380.0,
                height: 56.0,
                padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0x33BCBBC1), // Gray-Main20
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Country',
                          hintStyle: TextStyle(
                            color: Color(0xFF888888), // Color-Neutral-Neutral-400
                            fontFamily: 'Roboto',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            height: 1.2, // line height
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewUser()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF680DB3),
                  padding: const EdgeInsets.symmetric(horizontal: 134, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Color(0xFFE7E7E7),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                    height: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
