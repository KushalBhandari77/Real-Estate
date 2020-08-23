import 'package:flutter/material.dart';
import 'package:realstate/model/house_model.dart';
import 'package:realstate/pages/house_profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HouseModel> _houses=[
    HouseModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcStbJN2HWNx7cASV2cjmAwWMQJDqqC7yyHAO9C5OMrWrZ4McU97mmC3JU3mY8GQ_r1IkfU8VoDszdQWK7mFb58IXrbFPRuXMhHs_A&usqp=CAU&ec=45690274",title: "House On Sale",price: "500000",room: "5",toilet: "2",land: "5 dhur",parking: "yes",location: "Baneshwor"),
    HouseModel(image: "https://basobaas.com/api/public/images/2019-10/03/FB_IMG_1566550681200-1570087494_m.jpg",title: "Cheap House",price: "10000",room: "6",toilet: "2",land: "3 dhur",parking: "no",location: "Baneshwor",),
    HouseModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRthH7XCQVVKCRfvp1DGKjNV3td9NYs3F50lQZZ38yAU3MBc9pUy5DBQemkxwhCn8jHgOUABp_Tpgn7CGDkd4M21rzaTp6JufCVcA&usqp=CAU&ec=45690274",title: "House On ",price: "700000",room: "7",toilet: "2",land: "5 dhur",parking: "yes",location: "Baneshwor",),
    HouseModel(image: "https://www.gharghaderi.com/images/thumb_6435731340.jpg",title: "House ",price: "800000",room: "8",toilet: "2",land: "5 dhur",parking: "yes",location: "Baneshwor",),
    HouseModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQmR_8WiM5X9LZWomEyRkMsUgnOuEk9jYCgDi8x7pFlsA8Ul7QKJtp0M6j_2pm7Mm8FoY53rDH19d5fVSMvsMMQ3nKg3Id2Q9QUhg&usqp=CAU&ec=45690274",title: "Houseses",price: "900000",room: "9",toilet: "2",land: "5 dhur",parking: "yes",location: "Baneshwor",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Real Estate"),),
      body: ListView.builder(
        itemCount: _houses.length,
          itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HouseProfile(houseModel: _houses[index],)));
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.network(_houses[index].image),
                  Text(_houses[index].title,style: Theme.of(context).textTheme.headline6.apply(color: Colors.lightBlue),),
                  Text(_houses[index].price),
                  Text(_houses[index].location),

                ],
              ),
            ),
          );
          }
      )
    );
  }
}
