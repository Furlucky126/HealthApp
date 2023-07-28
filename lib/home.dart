import 'package:flutter/material.dart';
import 'package:healthapp/login.dart';

void main() {
  runApp(const HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Icon(
              Icons.notifications,
              color: Color(0xff6E6E6E),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Namaste, Your Name',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
                'Welcome to Nepal Police App, Please SignIn in to explore tools for modern policing',
                style: TextStyle(fontSize: 14, color: Colors.black)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dashboarditem(
                    imageLink: 'assets/p1.png', itemText: 'Report COVID 19'),
                dashboarditem(
                    imageLink: 'assets/siren1.png',
                    itemText: 'Report Incidence'),
                dashboarditem(
                    imageLink: 'assets/p3.png', itemText: 'Emergency Num'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dashboarditem(imageLink: 'assets/p4.png', itemText: 'News'),
                dashboarditem(imageLink: 'assets/p5.png', itemText: 'Notice'),
                dashboarditem(imageLink: 'assets/p6.png', itemText: 'FM'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dashboarditem(
                    imageLink: 'assets/p7.png', itemText: 'Station Nearby'),
                dashboarditem(
                    imageLink: 'assets/p8.png', itemText: 'e-complaint'),
                dashboarditem(
                    imageLink: 'assets/p9.png', itemText: 'Clearance Report'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text('GO back'))
          ],
        ),
      ),
    );
  }
}

class dashboarditem extends StatelessWidget {
  var imageLink;
  var itemText;

  dashboarditem({required this.imageLink, this.itemText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Image.asset(
              imageLink,
              scale: 2.25,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(itemText),
          ],
        ),
      ),
    );
  }
}
