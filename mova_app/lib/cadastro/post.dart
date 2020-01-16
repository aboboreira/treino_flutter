import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Post {
  final int id;
  final String title;
  final String description;

  Post({this.id, this.title, this.description});

  factory Post.fromJson(Map<String, String> json) {
    return Post(
      //userId: json['userId'],
      // id: json['id'],
      title: json['title'],
      description: json['description'],
    );
  }

  Map toMap() {
    var map = new Map<String, String>();
    //map["userId"] = userId;
    map["title"] = title;
    map["description"] = description;
    return map;
  }
}



Future<Post> createPost(String url, {Map body}) async {
  //put = update
  //return http.put(url, body: body).then((http.Response response) {

  //post = create
  return http.post(url, body: body).then((http.Response response) {

    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400 || json == null) {
      throw new Exception("Error while fetching data");
    }
    //return Post.fromJson(json.decode(response.body));
print(statusCode);
  });
}



class Posta extends StatelessWidget {

  final Future<Post> post;

  Posta({Key key, this.post}) : super(key: key);
  //put
  //static final CREATE_POST_URL = 'http://192.168.0.79/teste/api/item/1';
  
  //post
  static final CREATE_POST_URL = 'http://192.168.0.79/teste/api/item/';
  TextEditingController titleControler = new TextEditingController();
  TextEditingController bodyControler = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "WEB SERVICE",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Create Post'),
          ),
          body: new Container(
            margin: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: titleControler,
                  decoration: InputDecoration(
                      hintText: "title....", labelText: 'Post Title'),
                ),
                new TextField(
                  controller: bodyControler,
                  decoration: InputDecoration(
                      hintText: "body....", labelText: 'Post Body'),
                ),
                new RaisedButton(
                  onPressed: () //async {
                    //Post newPost = new Post(
                      //userId: "123", id: 0, title: titleControler.text, description: bodyControler.text);
                     //title: titleControler.text, description: bodyControler.text);
                    //Post p = await createPost(CREATE_POST_URL, body: newPost.toMap());
                   // print(p.title);

                  async{
                    Post newPost = new Post(
                     // userId: "123", id: 0, title: titleControler.text, description: bodyControler.text);
                      title: titleControler.text, description: bodyControler.text);
                   // _makePostRequest();
                    Post p = await createPost(CREATE_POST_URL, body: newPost.toMap());

                  },
                  child: const Text("enviar"),
                )
              ],
            ),
          )),
    );
  }

}
