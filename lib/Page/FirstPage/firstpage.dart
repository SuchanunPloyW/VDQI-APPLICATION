import 'package:flutter/material.dart';
import 'package:vaqi01/Page/AddCar/AddCar.dart';
import 'package:vaqi01/Page/CrqsCar/CrqsCar.dart';

import '../SearchCar/SearchCar.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  static const List<Widget> _widgetOptions = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            backgroundColor: Colors.blue[900],
            //title: Text('grrrrr'),
            automaticallyImplyLeading: false,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50), )),
          )),
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: Center(
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              const Icon(
                Icons.car_repair,
                size: 100,
              ),
              const Text(
                'VDQI SYSTEM ',
                style: TextStyle(
                  fontFamily: ('IBM Plex Sans Thai'),
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                '**กรุณากดปุ่มเพื่อเลือกการใช้งานระบบ**',
                style: TextStyle(
                    fontFamily: ('IBM Plex Sans Thai'),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 15.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchCar()));
                  // Respond to button press
                },
                icon: const Icon(Icons.search, size: 35),
                label: const Text(
                  "ค้นหารถ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: ('IBM Plex Sans Thai')),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[900],
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(250, 35)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AddCar()));
                  // Respond to button press
                },
                icon: const Icon(Icons.add_location_alt, size: 35),
                label: const Text(
                  "เพิ่มรถ",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: ('IBM Plex Sans Thai'),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900],
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(250, 35)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CrqsCar()));
                  // Respond to button press
                },
                icon: const Icon(Icons.outbond_rounded, size: 35),
                label: const Text(
                  "เบิกรถ",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: ('IBM Plex Sans Thai')),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(250, 35)),
              ),
            ]))));
  }
}
