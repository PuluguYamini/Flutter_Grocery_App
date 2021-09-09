import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './catfiles.dart';

class DVeg extends StatefulWidget {
  const DVeg({Key? key}) : super(key: key);

  @override
  _DVegState createState() => _DVegState();
}

class _DVegState extends State<DVeg> {
  final List<String> imglist = [
    'images/v1.jpg',
    'images/v2.jfif',
    'images/v3.jpg',
    'images/v4.jpg',
    'images/v5.jpg',
    'images/v6.jpg'
  ];
  final List<String> namelist = [
    'Tomato (1KG)',
    'Onion (1KG)',
    'Carrot (1KG)',
    'BeetRoot (1KG)',
    'Capcisum (1KG)',
    'Potato (1KG)'
  ];
  final List<String> p1 = [
    r'$5.00/kg',
    r'$8.00/kg',
    r'$5.20/kg',
    r'$4.25/kg',
    r'$17.00/kg',
    r'$5.00/kg'
  ];
  final List<String> p2 = [
    r'$5.00',
    r'$8.00',
    r'$5.20',
    r'$4.25',
    r'$17.40',
    r'$5.00'
  ];
  int _itemCount = 0;
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(children: <Widget>[
          Stack(children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/v1.jpg'),
                  fit: BoxFit.fill,
                ))),
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  icon: Icon(
                    Icons.navigate_before,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => C1()));
                  }),
            ),
          ]),
          Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Color(-1907225),
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(children: [
                    Expanded( flex: 3, child:
                    Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Tomato',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text(r'$5.00/kg',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey)),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(r'$5.00/kg   ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  Divider(
                                    height: 2,
                                    thickness: 1,
                                  ),
                                  Text('5 Calories   ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  Divider(
                                    height: 2,
                                    thickness: 1,
                                  ),
                                  Row(children: <Widget>[
                                    Icon(Icons.star),
                                    Text('4.5',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    Text('(254)',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey)),
                                  ])
                                ]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Ink(
                                      decoration: const ShapeDecoration(
                                          color: Colors.green,
                                          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                      child: IconButton(icon: Icon(Icons.remove,
                                          color: Colors.black), iconSize: 30,
                                      onPressed: () {
                                        if (_itemCount <= 0)
                                          return setState(() => _itemCount = 0);
                                        return setState(() => _itemCount--);
                                      })),
                                  Text('  $_itemCount kg  ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  Ink(
                                      decoration: const ShapeDecoration(
                                          color: Colors.green,
                                          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                      child: IconButton(icon: Icon(Icons.add, color: Colors.black), iconSize: 30,
                                    onPressed: () =>
                                        setState(() => _itemCount++),
                                  )),
                                ])
                          ],
                        ))),
                    Expanded( flex: 3, child: Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column( children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded( flex: 2,
                          child: FlatButton(
                            onPressed: () =>
                                setState(() => _value = 0),
                                child: Text(
                                  'Details',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                                ),),),
                              Expanded( flex: 2, child: FlatButton(
                                onPressed: () => setState(() => _value = 1),
                                child: Text(
                                  'Reviews',
                                  style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                                ),),),
                            ]),
                          _value == 0 ? Container( width: double.infinity, height: 145, child: DetailCon())
                              : Container( width: double.infinity, height: 145, child: RevCon())

                        ]))),
                    Expanded(flex: 4, child: Container(
                      height: double.infinity, width: double.infinity,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                alignment: Alignment.centerLeft,
                                  child: const Text('  Similar products',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),),
                              Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  width: MediaQuery.of(context).size.width,
                                  height: 225,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: imglist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.all(5),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  InkResponse(
                                                      splashColor: Colors
                                                          .deepOrange
                                                          .withOpacity(0.5),
                                                      highlightColor: Colors
                                                          .blueGrey
                                                          .withOpacity(0.5),
                                                      child: Image.asset(
                                                        imglist[index],
                                                        fit: BoxFit.cover,
                                                        height: 125,
                                                      ),
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (_) =>
                                                                    DVeg()));
                                                      }),
                                                  Text(namelist[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text(p1[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Text(p2[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Color(-13318564),
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ]));
                                      })),
                            ])))
                  ])),
        ]))))));
  }
}

class DetailCon extends StatelessWidget {
  const DetailCon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10), height: 145,
        decoration: BoxDecoration(
            color: Color(-13318564),
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: const Text('Tomatoes are loaded with many, many health benefits. '
            'In fact, they are incredibly versatile and can be prepared in a seemingly endless number of dishes, as well as being great to eat alone. '
            'Keep reading to find out why you need to stop neglecting tomatoes as a part of your regular balanced diet.',
          style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class RevCon extends StatelessWidget {
  const RevCon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10), height: 145,
        decoration: BoxDecoration(
            color: Color(-13318564),
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
          child: const Text('No Reviews', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white,)
          ));
  }
}



