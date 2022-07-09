import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchCar extends StatefulWidget {
  const SearchCar({Key? key}) : super(key: key);

  @override
  State<SearchCar> createState() => _SearchCarState();
}

class _SearchCarState extends State<SearchCar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('ค้นหา')),
    
    );
    
  }
}