import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tigabelasyanglanjutan_drawer/car.dart';

class CarCard extends StatelessWidget{
  final Cars cars;
  CarCard({this.cars});
    
    @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(cars.imageUrl),
            ),
            title: Text(cars.name),
            subtitle: Text(cars.teks),
            trailing: Text(cars.speed),
            
          )
          
        ],
      ),
    );
  }}
