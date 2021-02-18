import 'package:flutter/material.dart';
import 'package:untitled1/models/post.dart';
import 'package:untitled1/views/singlecard.dart';

class Cards extends StatefulWidget {
  //String imgLink;
  Post chosen_post;

  //Cards({this.imgLink,this.chosen_post});
  Cards(this.chosen_post);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SingleCard(widget.chosen_post), //SingleCard(imgLink: widget.imgLink, post_details: widget.chosen_post)
                    ),
                  );
                },
                child: Text(
                  widget.chosen_post.title,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                ),
            ),
            /*Image.network(
              widget.imgLink,
              width: 150,
              height: 50,
              fit: BoxFit.cover,),*/
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [Icon(Icons.thumb_up), Text('Like')],
                    )),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Row(children: [Icon(Icons.comment), Text('Comment')]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
