import 'package:flutter/material.dart';
import 'package:untitled1/models/post.dart';

class SingleCard extends StatefulWidget {
  Post post_details;
  //String imgLink;
  //SingleCard({this.imgLink, this.post_details});
  SingleCard(this.post_details);

  @override
  _SingleCardState createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              //Image.network(widget.imgLink, width: 80,height:150,fit: BoxFit.cover,),
              Text(widget.post_details.title, style: TextStyle(color:Colors.deepPurple, fontSize: 20),),
              Text(widget.post_details.body, style: TextStyle(color:Colors.black87, fontSize: 13),),
            ],
          ),
        ),
      ),
    );
  }
}
