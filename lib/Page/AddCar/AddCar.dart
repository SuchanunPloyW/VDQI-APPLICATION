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
        
          preferredSize: Size.fromHeight(100),
          child: AppBar(
             centerTitle: true,
            title: Text('ADD CAR TO STOCK',textAlign: TextAlign.center, style:TextStyle(fontSize: 20,),),
            backgroundColor: Colors.blue[900],
            automaticallyImplyLeading: false,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(100), )),
          )),
      body: Center(child: Text('เพิ่มรถ')),
    );
  }
}
