import 'package:flutter/material.dart';

import 'widgets/appbardecoration.dart';
class TourGuidClass extends StatefulWidget {
  const TourGuidClass({Key? key}) : super(key: key);

  @override
  _TourGuidClassState createState() => _TourGuidClassState();
}

class _TourGuidClassState extends State<TourGuidClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDecoration(context,'Home'),
      body: _bodyUi(),
      );

  }
  Widget _bodyUi(){
    Size size=MediaQuery.of(context).size;
    Color Primerycolor= Theme.of(context).primaryColor;
    Color hintcolor=Theme.of(context).hintColor;
    return ListView(
      children: [
        Container(
          height: size.height*0.15,
          width: size.width,
          decoration: BoxDecoration(
            color: Primerycolor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.pin_drop_outlined,size: size.height*0.1,color: Colors.white,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Travel Guide',style: TextStyle(color: hintcolor,fontSize: size.height*.05),),
                  Text('Travel Information for All Countries',style: TextStyle(color: hintcolor,fontSize: size.height*0.02),),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
