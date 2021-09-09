import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return FutureBuilder(
        future: _scrolls(),
        builder: (context, snapshot) {
          return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage('images/open.PNG'),
            fit: BoxFit.cover,
          )));
        });
  }

  Future<String> _scrolls() async {
    await Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return Page1();
      }));
    });
    return 'Welcome';
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
                                        builder: (_) => LoginPage()));
                              }),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Page2()));
                            },
                            child: Text(
                              'Skip',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(-1907225),
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(children: [
                          Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(20),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset('images/p1.PNG'),
                                    const Text('Shop your daily needs',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    const Text(
                                        'You wont find it cheaper anywhere else than Gronik',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black)),
                                    const Text('\n\n\n'),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text('.',
                                              style: TextStyle(
                                                  fontSize: 100,
                                                  color: Color(-13318564))),
                                          const Text('.',
                                              style: TextStyle(
                                                  fontSize: 100,
                                                  color: Color(-1907225))),
                                          const Text('.',
                                              style: TextStyle(
                                                  fontSize: 100,
                                                  color: Color(-1907225))),
                                        ])
                                  ])),
                          Container(
                              child: SizedBox(
                                  height: 50,
                                  width: 370,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => Page2()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(-13318564),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(-13318564))),
                                      child: Text('Get Started',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white))))),
                          Divider(
                            height: 10,
                          ),
                        ]),
                      ),
                    ])))));
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                          context, MaterialPageRoute(builder: (_) => Page1()));
                    }),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Page3()));
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(-1907225),
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('images/p2.PNG'),
                          const Text('Exciting offers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          const Text(
                              'Get new offers and great deals everyday every hour',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                          const Text('\n\n'),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('.',
                                    style: TextStyle(
                                        fontSize: 100, color: Color(-1907225))),
                                const Text('.',
                                    style: TextStyle(
                                        fontSize: 100,
                                        color: Color(-13318564))),
                                const Text('.',
                                    style: TextStyle(
                                        fontSize: 100, color: Color(-1907225))),
                              ])
                        ])),
                Container(
                    child: SizedBox(
                        height: 50,
                        width: 370,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Page3()));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(-13318564),
                                side: BorderSide(
                                    width: 1, color: Color(-13318564))),
                            child: Text('Get Started',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white))))),
                Divider(
                  height: 10,
                ),
              ]),
            )
          ]),
        ))));
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(child: Container(
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
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Page2()));
                              }),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(-1907225),
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(children: [
                          Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(20),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset('images/p3.PNG'),
                                    const Text('1000+ products',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    const Text(
                                        'Shop and get delivery at your convenience',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black)),
                                    const Text('\n\n'),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text('.',
                                              style: TextStyle(
                                                  fontSize: 100,
                                                  color: Color(-1907225))),
                                          const Text('.',
                                              style: TextStyle(
                                                  fontSize: 100,
                                                  color: Color(-1907225))),
                                          const Text('.',
                                              style: TextStyle(
                                                  fontSize: 100,
                                                  color: Color(-13318564))),
                                        ])
                                  ])),
                          Container(
                              child: SizedBox(
                                  height: 50,
                                  width: 370,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => SignUp()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(-13318564),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(-13318564))),
                                      child: Text('Get Started',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white))))),
                          Divider(
                            height: 10,
                          ),
                        ]),
                      )
                    ])))));
  }
}
