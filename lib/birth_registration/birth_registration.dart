import 'package:flutter/material.dart';

import 'package:random_string/random_string.dart';

class BirthRegistration extends StatefulWidget {
  @override
  _BirthRegistrationState createState() => _BirthRegistrationState();
}

class _BirthRegistrationState extends State<BirthRegistration> {
  int sexRadio, natureRadio;

  @override
  void initState() {
    super.initState();
    sexRadio = 0;
    natureRadio = 0;
  }

  setSexRadio(int val) {
    setState(() {
      sexRadio = val;
    });
  }

  setNatureRadio(int val) {
    setState(() {
      natureRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birth Registration"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "NAME:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "First Name",
                                  labelText: "First Name",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "Other Name",
                                  labelText: "Other Name",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "Surname/tribal name",
                                  labelText: "Surname/tribal name",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Date of Birth:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                                width: 80,
                                child: TextField(
                                  maxLength: 2,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                      hintText: "Day",
                                      labelText: "Day",
                                      border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0))),
                                )),
                            Container(
                                width: 80,
                                child: TextField(
                                  maxLength: 2,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                      hintText: "Month",
                                      labelText: "Month",
                                      border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0))),
                                )),
                            Container(
                                width: 80,
                                child: TextField(
                                  maxLength: 4,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                      hintText: "Year",
                                      labelText: "Year",
                                      border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0))),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "SEX:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: sexRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                setSexRadio(val);
                              },
                            ),
                            Text("Male")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Radio(
                              value: 2,
                              groupValue: sexRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                setSexRadio(val);
                              },
                            ),
                            Text("Female")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Radio(
                              value: 3,
                              groupValue: sexRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                setSexRadio(val);
                              },
                            ),
                            Text("Other")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Nature of Birth:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: natureRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                setNatureRadio(val);
                              },
                            ),
                            Text("Alive")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Radio(
                              value: 2,
                              groupValue: natureRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                setNatureRadio(val);
                              },
                            ),
                            Text("Dead")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Place of Birth:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "Sub location",
                                  labelText: "Sub location",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "District",
                                  labelText: "District",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "MOTHER'S NAME:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "First Name",
                                  labelText: "First Name",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "Other Name",
                                  labelText: "Other Name",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "Surname/tribal name",
                                  labelText: "Surname/tribal name",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "FATHER'S NAME:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "First Name",
                                  labelText: "First Name",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "Other Name",
                                  labelText: "Other Name",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "Surname/tribal name",
                                  labelText: "Surname/tribal name",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("To filled by Medical person"),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Registration no:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              scrollPadding: EdgeInsets.all(20.0),
                              decoration: new InputDecoration(
                                  hintText: "Registration no",
                                  labelText: "Registration no",
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0))),
                            )),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Registration Date:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                                width: 80,
                                child: TextField(
                                  maxLength: 2,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                      hintText: "Day",
                                      labelText: "Day",
                                      border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0))),
                                )),
                            Container(
                                width: 80,
                                child: TextField(
                                  maxLength: 2,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                      hintText: "Month",
                                      labelText: "Month",
                                      border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0))),
                                )),
                            Container(
                                width: 80,
                                child: TextField(
                                  maxLength: 4,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                      hintText: "Year",
                                      labelText: "Year",
                                      border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0))),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 5,
                ),
                RaisedButton(
                  color: Colors.blueAccent,
                  child: Text("Generate Credential",
                      style: TextStyle(color: Colors.white)),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        child: new AlertDialog(
                          title: new Text("Credential Generated"),
                          content: new Text(randomAlphaNumeric(10)),
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
