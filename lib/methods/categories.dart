import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './homepage.dart';
import './catfiles.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List imglist = [
    'images/c1.PNG',
    'images/c2.PNG',
    'images/c3.PNG',
    'images/c4.PNG',
    'images/c5.PNG',
    'images/c6.PNG',
    'images/c7.PNG',
    'images/c8.PNG',
    'images/c9.PNG',
    'images/c10.PNG',
    'images/c11.PNG',
    'images/c12.PNG'
  ];

  final List<String> namelist = [
    'Vegetables',
    'Fruits',
    'Meat',
    'Milk & eggs',
    'Fish',
    'Drinks',
    'Sea food',
    'Cakes',
    'Bakery',
    'Biscuits',
    'Ice Cream',
    'Juice'
  ];

  final List<Widget> navlist = [
    C1(),
    C2(),
    C3(),
    C4(),
    C5(),
    C6(),
    C7(),
    C8(),
    C9(),
    C10(),
    C11(),
    C12()
  ];
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
                          const Text('Categories',
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
                        ],
                      ),
                      SingleChildScrollView( child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Color(-1907225),
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(children: [
                            Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(children: <Widget>[
                                  Container(
                                      height: MediaQuery.of(context).size.height,
                                      child: GridView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        scrollDirection: Axis.vertical,
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                          childAspectRatio: MediaQuery.of(context).size.width/
                                              (MediaQuery.of(context).size.height/1.5),),
                                            itemCount: imglist.length,
                                            itemBuilder: (context, index){
                                            return Column(
                                              children: <Widget>[
                                                ClipRRect(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                        child: InkResponse(
                                                            splashColor: Colors
                                                                .deepOrange
                                                                .withOpacity(0.5),
                                                            highlightColor: Colors
                                                                .blueGrey
                                                                .withOpacity(0.5),
                                                            child: Image.asset(
                                                              imglist[index],
                                                              fit: BoxFit.fill,
                                                              height: 100,
                                                              width: 100,
                                                            ),
                                                            onTap: () {
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (_) =>
                                                                      navlist[
                                                                      index]));
                                                            })),
                                                Text(namelist[index],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontWeight:
                                                        FontWeight.bold))
                                              ]);
                                          })),
                                ])),
                          ]))),
                    ])))));
  }
}

