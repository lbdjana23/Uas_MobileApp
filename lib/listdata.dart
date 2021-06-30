import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './main.dart';

// ignore: must_be_immutable
class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({this.index, this.list});
  @override
  _DetailState createState() => new _DetailState();
}

class _DetailState extends State<Detail> {
  void deleteData() {
    http.post(Uri.parse("http://10.0.2.2/my_store/delete.php"),
        body: {'id': widget.list[widget.index]['id']});
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
          "Are You sure want to delete '${widget.list[widget.index]['item_name']}'"),
      actions: <Widget>[
        // ignore: deprecated_member_use
        new RaisedButton(
          child: new Text(
            "OK DELETE!",
            style: new TextStyle(color: Colors.blue),
          ),
          color: Colors.green,
          onPressed: () {
            deleteData();
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new Home(),
            ));
          },
        ),
        // ignore: deprecated_member_use
        new RaisedButton(
          child: new Text("CANCEL", style: new TextStyle(color: Colors.black)),
          color: Colors.yellow,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("${widget.list[widget.index]['id']}")),
      body: new Container(
        height: 270.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  widget.list[widget.index]['nama'],
                  style: new TextStyle(fontSize: 20.0),
                ),
                new Text(
                  "Nim : ${widget.list[widget.index]['nim']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Jurusan : ${widget.list[widget.index]['jurusan']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Semester : ${widget.list[widget.index]['semester']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Tahun_ajaran : ${widget.list[widget.index]['tahun_ajaran']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // ignore: deprecated_member_use
                    new RaisedButton(
                      child: new Text("EDIT"),
                      color: Colors.green,
                      onPressed: () =>
                          // ignore: missing_return
                          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {  }
                        
                      )),
                    ),
                    // ignore: deprecated_member_use
                    new RaisedButton(
                      child: new Text("DELETE"),
                      color: Colors.yellow,
                      onPressed: () => confirm(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
