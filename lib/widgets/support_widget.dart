import 'package:flutter/material.dart';

class SupportWidget extends StatelessWidget {
const SupportWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      
    );
  }
}