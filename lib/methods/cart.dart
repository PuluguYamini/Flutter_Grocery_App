import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './homepage.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  final List<String> imglist = ['images/f1.jfif', 'images/f2.jpg', 'images/f3.jpg',
    'images/f4.jpg',];
  final List<String> namelist = ['Strawberry (1KG)', 'Orange (10Pcs)', 'Banana (8Pcs)',
    'Watermelon (1KG)',];
  final List<String> p1 = [r'$17.00/kg', r'$1.00/pc', r'$0.20/pc', r'$4.25/kg',];
  final List<String> p2 = [r'$17.20', r'$10.00', r'$1.60', r'$4.25',];
  final List _itemCount = [0, 0, 0, 0,];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
                child: Container(decoration: BoxDecoration(
                  color: Color(-13318564)),
                  child: Column( children: <Widget>[
                    const Text('\n\n\n'),
                    const Text('Cart',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    SingleChildScrollView( child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: Color(-1907225),
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(children: [
                            Expanded( flex: 3, child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.white, width: 1),
                                borderRadius: BorderRadius.circular(12)),
                            child: Container(
                                child: ListView.separated(
                                  shrinkWrap: true,
                                    itemCount: imglist.length,
                                    separatorBuilder: (BuildContext context, int index) => Divider( height: 3, color: Colors.grey),
                                    itemBuilder: (BuildContext context, int index) {
                                      return SizedBox( height:120, child:
                                          ListTile(
                                          leading: IconButton(icon: Icon(Icons.delete, color: Colors.red, size: 30,), onPressed: () => setState(() => imglist.removeAt(index)),),
                                          title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                                          Image.asset(imglist[index], fit: BoxFit.cover, height: 80, width: 80),
                                            Column( crossAxisAlignment: CrossAxisAlignment.center,  mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                                            Text(namelist[index], textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold)),
                                            Text(p1[index], textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey)),
                                            Text(p2[index], textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(-13318564),
                                                    fontWeight:
                                                    FontWeight.bold)),
                                          ]),
                                          new Column(crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[
                                            new IconButton(icon: new Icon(Icons.add), onPressed: () => setState(()=> _itemCount[index]++)),
                                            new Text(_itemCount[index].toString(), style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
                                            new IconButton(icon: new Icon(Icons.remove),
                                                onPressed: () {
                                              if (_itemCount[index] <= 0)   return setState(() => _itemCount[index] = 0);
                                              return setState(() => _itemCount[index]--);})
                                          ])])
                                      ));
                                    }
                                )))),
                          Expanded( flex: 1, child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(-1907225),
                                  border: Border.all(
                                      color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(12)),
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget> [
                              Text(r'Total: $14.25', style: TextStyle(fontSize: 20,
                                    color: Colors.black,
                                    fontWeight:
                                    FontWeight.bold)),

                              SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton
                                          .styleFrom(
                                          primary: Color(
                                              -13318564),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(
                                                  -13318564))),
                                      child: Text(
                                          'Checkout >>',
                                          textAlign:
                                          TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors
                                                  .white)))),
                            ])
                          ))
                        ])))
                  ])))));
  }
}


