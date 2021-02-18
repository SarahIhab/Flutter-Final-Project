import 'package:flutter/material.dart';
import 'package:untitled1/models/post.dart';
import 'file:///C:/Users/user/IdeaProjects/untitled1/lib/views/cards.dart';
import 'package:untitled1/services/postsService.dart';


class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  // imgList = "https://picsum.photos/200/300";
  List<Post> postList = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPosts();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  getPosts() async{
    postList = await PostService().getPosts();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Page',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
        padding: const EdgeInsets.all(8),
          itemCount: postList.length,
          itemBuilder: (BuildContext context, int index) {
            return Cards(postList[index]); //imgLink: imgList,
          },
      ),
    );
  }
}
