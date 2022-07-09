import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CrqsCar extends StatefulWidget {
  const CrqsCar({Key? key}) : super(key: key);

  @override
  State<CrqsCar> createState() => _CrqsCarState();
}

class _CrqsCarState extends State<CrqsCar> {
  @override
 Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('เบิกรถ')),
    
    );
    
  }
}