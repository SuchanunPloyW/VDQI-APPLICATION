import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddCar extends StatefulWidget {
  const AddCar({Key? key}) : super(key: key);

  @override
  State<AddCar> createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  Map<String, String> selectedValueMap = Map();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: AppBar(
              centerTitle: true,
              title: const Text(
                'ADD CAR TO STOCK',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              backgroundColor: Colors.blue[900],
              automaticallyImplyLeading: false,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(100),
              )),
            )),
        body: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: Icon(Icons.car_repair),
                        border: InputBorder.none,
                        hintText: 'กรอกเลขตัวถัง',
                        hintStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                          fontFamily: ('IBM Plex Sans Thai'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: Icon(Icons.car_repair),
                        border: InputBorder.none,
                        hintText: 'โซนที่จอด',
                        hintStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                          fontFamily: ('IBM Plex Sans Thai'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.red),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: Icon(Icons.car_repair),
                        border: InputBorder.none,
                        hintText: 'ตำแหน่งที่จอด',
                        hintStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                          fontFamily: ('IBM Plex Sans Thai'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
               const SizedBox(
                height: 100,
              ),
              // sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[900],
                      padding: EdgeInsets.all(1.0),
                      minimumSize: Size(300, 0)),

                  // ignore: sort_child_properties_last
                  onPressed: () {  },
                  child: const Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'บันทึกรายการ',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontFamily: ('IBM Plex Sans Thai'),
                        color: Colors.white,
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[900],
                      padding: EdgeInsets.all(1.0),
                      minimumSize: Size(300, 0)),

                  // ignore: sort_child_properties_last
                  onPressed: () {  },
                  child: const Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'ย้อนกลับ',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontFamily: ('IBM Plex Sans Thai'),
                        color: Colors.white,
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  
                ),
              ),


            ]),
          ),
        ));
  }
}
