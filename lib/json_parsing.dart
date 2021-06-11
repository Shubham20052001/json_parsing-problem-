import 'package:flutter/material.dart';
import 'package:json_parsing/Network.dart';

class JsonParsingSimple extends StatefulWidget {
  @override
  _JsonParsingSimpleState createState() => _JsonParsingSimpleState();
}

class _JsonParsingSimpleState extends State<JsonParsingSimple> {
  Future data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing Json"),
        centerTitle: true,
      ),
      // body: Center(
      //   child: Container(
      //     child: FutureBuilder(
      //         future: getData(),
      //         builder: (context, AsyncSnapshot snapshot){
      //           return Text(snapshot.data);
      //         }),
      //   ),
      // ),
    );
  }

  Future getData() async {
     Future data;
    String url = "https://jsonplaceholder.typicode.com/posts";
    Network network = Network(url);
    data = network.fetchData();
    // data.then((value) {
    //   print(value[0]);
    // });
    return data;
  }

}
