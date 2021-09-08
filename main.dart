import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tigabelasyanglanjutan_drawer/car-card.dart';
import 'package:tigabelasyanglanjutan_drawer/car-list.dart';
import 'package:tigabelasyanglanjutan_drawer/car.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super Cars',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MinalAidin(),
    );
  }
}


class MinalAidin extends StatefulWidget {
  @override
  _WalFaidzinState createState() => new _WalFaidzinState();
}

class _WalFaidzinState extends State<MinalAidin>{
final List<Cars> cars = Carlist.getCars();
Widget _buildCarlist(){
  return Container(
    child: cars.length>0
    ? ListView.builder(
      itemCount: cars.length,
      itemBuilder: (BuildContext context, int index){
        return Dismissible(
          onDismissed: (DismissDirection direction){
            setState(() {
              cars.removeAt(index);
            });
          },
          secondaryBackground: Container(
            child: Center(
              child: Text('Delete', style: TextStyle(color: Colors.white),
              ),
            ),
            color: Colors.blueGrey[200],
          ),
          background: Container(),
          child: CarCard(cars: cars[index]),
          key: UniqueKey(),
          direction: DismissDirection.endToStart,
          );
      },
      )
      : Center(child: Text('No Item')),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars'),
      ),
      body: _buildCarlist(),
    );
  }
}
