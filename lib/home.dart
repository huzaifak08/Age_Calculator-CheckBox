import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double age = 0.0;
  var selectedYear;

  void _showPicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime(2022),
            firstDate: DateTime(1900),
            lastDate: DateTime.now())
        .then((DateTime) {
      setState(() {
        selectedYear = DateTime?.year;
        calculateAge();
      });
    });
  }

  void calculateAge() {
    setState(() {
      age = (2022 - selectedYear).toDouble();
    });
  }

  bool check1 = false;
  bool check2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Age Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                _showPicker();
              },
              child: Text(selectedYear != null
                  ? 'The Year you selected is :${selectedYear.toString()}'
                  : 'Select your year of birth'),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 3,
                  color: Colors.brown,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your Age is ${age.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Checkbox(
                  value: check1,
                  onChanged: (value) {
                    setState(() {
                      check1 = !check1;
                    });
                  },
                ),
                Text('I am not a Robot'),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Checkbox(
                  value: check2,
                  onChanged: (value) {
                    setState(
                      () {
                        check2 = !check2;
                      },
                    );
                  },
                ),
                Text('Agree our terms and Conditions')
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    check1 = !check1;
                    check2 = !check2;
                  });
                },
                child: Text('Agree and Continue'))
          ],
        ),
      ),
    );
  }
}
