import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Scrollbar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final List<String> contacts = [
    'Ahmed ',
    'Fatima Ali',
    'Muhammad Ahmed',
    'Aisha Rahman',
    'Zaynab Hassan',
    'Yusuf Malik',
    'Amina Khan',
    'Ibrahim Abdullah',
    'Khadija Ahmed',
    'Omar Qureshi',
    'Maryam Siddiqui',
    'Ali Khan',
    'Sana',
    'Sumaya ',
    'Hamza Khan',
    'Zara Khan',
    'Hasan Siddiqui',
    'Nadia Khan',
    'Imran Khan',
    'Ayesha ',
    'Abdul Rahman',
    'Khadija ',
    'Salman Khan',
    'Safia Malik',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Scrollbar(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text(contacts[index]),

                    onTap: () {

                    },
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
