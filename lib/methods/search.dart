import 'package:flutter/material.dart';
import './homepage.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<String> imglist = [
    'images/v1.jpg',
    'images/v2.jfif',
    'images/v3.jpg',
    'images/v4.jpg',
    'images/v5.jpg',
    'images/v6.jpg',
    'images/f1.jfif',
    'images/f2.jpg',
    'images/f3.jpg',
    'images/f4.jpg',
    'images/f5.jpg',
    'images/f6.jpg'
  ];
  final List<String> namelist = [
    'Tomato (1KG)',
    'Onion (1KG)',
    'Carrot (1KG)',
    'BeetRoot (1KG)',
    'Capcisum (1KG)',
    'Potato (1KG)',
    'Strawberry (1KG)',
    'Orange (10Pcs)',
    'Banana (8Pcs)',
    'Watermelon (1KG)',
    'Apple (1KG)',
    'Pineapple (1KG)'
  ];
  final List<String> p1 = [
    r'$5.00/kg',
    r'$8.00/kg',
    r'$5.20/kg',
    r'$4.25/kg',
    r'$17.00/kg',
    r'$5.00/kg',
    r'$17.00/kg',
    r'$1.00/pc',
    r'$0.20/pc',
    r'$4.25/kg',
    r'$17.00/kg',
    r'$15.00/kg'
  ];
  final List<String> p2 = [
    r'$5.00',
    r'$8.00',
    r'$5.20',
    r'$4.25',
    r'$17.40',
    r'$5.00',
    r'$17.20',
    r'$10.00',
    r'$1.60',
    r'$4.25',
    r'$17.40',
    r'$15.00'
  ];
  int _itemCount = 0;
  TextEditingController cntrl = TextEditingController();
  List<String> newlist = [];

  void _runFilter(String enteredKeyword) {
    List<String> results = [];
    if (enteredKeyword.isEmpty) {
      results = namelist;
    } else {
      results = namelist
          .where((string) => string.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    // Refresh the UI
    setState(() {
      newlist = results;
    });
  }

  @override
  initState() {
    // at the beginning, all users are shown
    newlist = namelist;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    decoration: BoxDecoration(color: Color(-13318564)),
                    child: Column(children: <Widget>[
                      const Text('\n\n\n'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.navigate_before,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => HomePage()));
                              }),
                          const Text('Search',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          const Text('       ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ],),
                      const SizedBox(height:10),
                      Container( alignment: Alignment.center, padding: EdgeInsets.all(20), child:
                      TextField(
                          controller: cntrl,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(-1379597),
                            border: OutlineInputBorder(),
                            hintText: '   Search Here...',),
                        onChanged: (value) => _runFilter(value),
                      )),
                      const SizedBox(height:10),
                      SingleChildScrollView( child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Color(-1907225),
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(children: [
                            Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Container(
                                    height: MediaQuery.of(context).size.height, child: newlist.length > 0
                                ? GridView.builder(
                                        physics: ScrollPhysics(),
                                        scrollDirection: Axis.vertical,
                                        gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio:
                                          MediaQuery.of(context).size.width /
                                              (MediaQuery.of(context).size.height / 1.5),),
                                        itemCount: imglist.length,
                                        itemBuilder: (context, index) {
                                          return Container( alignment: Alignment.center,
                                              padding: EdgeInsets.all(5), margin: EdgeInsets.all(5),
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    InkResponse(
                                                        splashColor: Colors.deepOrange
                                                            .withOpacity(0.5),
                                                        highlightColor: Colors
                                                            .blueGrey
                                                            .withOpacity(0.5),
                                                        child: Image.asset(
                                                          imglist[index],
                                                          fit: BoxFit.cover,
                                                          height: 125,
                                                        ),
                                                        onTap: () {}),
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
                                                            color: Color(-13318564),
                                                            fontWeight:
                                                            FontWeight.bold)),
                                                    Expanded(child: SizedBox( height:10,
                                                        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget> [
                                                          _itemCount != 0 ? new IconButton(icon: new Icon(Icons.remove), onPressed: () => setState(() =>_itemCount--),): new Container(),
                                                          _itemCount != 0 ? new Text(_itemCount.toString(), style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black,
                                                              fontWeight:
                                                              FontWeight.bold)): new Container(),
                                                          new IconButton(icon: new Icon(Icons.add), onPressed: () => setState(()=> _itemCount++))
                                                        ])))
                                                  ]));
                                        }) : Text(
                                  'No results found',
                                  style: TextStyle(fontSize: 24),
                                ),
                                )),
                          ])))
                    ])))));
  }
}
