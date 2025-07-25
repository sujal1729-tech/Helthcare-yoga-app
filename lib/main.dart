import 'package:flutter/material.dart';

void main() {
  runApp(HealthcareYogaApp());
}

class HealthcareYogaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthcare Yoga',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PasscodeScreen(),
    );
  }
}

class PasscodeScreen extends StatefulWidget {
  @override
  _PasscodeScreenState createState() => _PasscodeScreenState();
}

class _PasscodeScreenState extends State<PasscodeScreen> {
  final _passcodeController = TextEditingController();
  final _correctPasscode = 'Yogapass123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter Secret Passcode')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _passcodeController,
              decoration: InputDecoration(labelText: 'Secret Passcode'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Enter'),
              onPressed: () {
                if (_passcodeController.text == _correctPasscode) {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Dashboard()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Wrong Passcode')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Dashboard')),
      body: Center(child: Text('Welcome to Healthcare Yoga App')),
    );
  }
}Image.asset('assets/icons/my_icon.png', width: 120),