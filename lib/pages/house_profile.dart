import 'package:flutter/material.dart';
import 'package:realstate/model/house_model.dart';

class HouseProfile extends StatelessWidget {
  
  final HouseModel houseModel;

  const HouseProfile({Key key, this.houseModel}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(houseModel.image),
            Text(houseModel.price),
            Text(houseModel.location),
            Text(houseModel.land),
            Text(houseModel.room),
            Text(houseModel.toilet),
            Text(houseModel.parking),
          ],
        ),
      ),
    );
  }
}
