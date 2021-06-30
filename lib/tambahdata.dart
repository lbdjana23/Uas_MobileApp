import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => new _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerId = new TextEditingController();
  TextEditingController controllerNama= new TextEditingController();
  TextEditingController controllerNim = new TextEditingController();
  TextEditingController controllerJurusan= new TextEditingController();
    TextEditingController controllerSemester= new TextEditingController();
      TextEditingController controllerTahunajaran= new TextEditingController();





  void addData() {
    var controllerId;
    var controllerNama;
    var controllerNim;
    http.post(Uri.parse("http://10.0.2.2/my_store/deletedata.php"), body: {
      "id": controllerId.text,
      "nama": controllerNama.text,
      "nim": controllerNim.text,
      "jurusan": controllerJurusan.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tambah data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Id", labelText: "Id"),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Nama", labelText: "Nama"),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Nim", labelText: "Nim"),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Jurusan", labelText: "Jurusan"),
                ),
                 new TextField(
                  decoration: new InputDecoration(
                      hintText: "Semester", labelText: "Semester"),
                ),
                 new TextField(
                  decoration: new InputDecoration(
                      hintText: "Tahun Ajaran", labelText: "Tahun Ajaran"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                // ignore: deprecated_member_use
                new RaisedButton(
                  child: new Text("Tambah Data"),
                  color: Colors.blueAccent,
                  onPressed: () {
                    addData();
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
