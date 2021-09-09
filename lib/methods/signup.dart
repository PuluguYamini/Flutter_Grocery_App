import 'package:flutter/material.dart';
import './homepage.dart';

bool isEmailValid(String email) {
  var pattern =
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  return (!regex.hasMatch(email)) ? false : true;
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formGlobalKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  final name = TextEditingController();
  bool _isHidden = true;
  final pwd = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
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
                                        builder: (_) => SignUp()));
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
                            Expanded(
                                flex: 3,
                                child: Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(20),
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.white, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Column(children: <Widget>[
                                      const Text('Sign up',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      const Text(
                                          'Sign up with your email and password to continue',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black)),
                                      Form(
                                          key: formGlobalKey,
                                          child: Column(children: [
                                            Container(
                                                alignment: Alignment.topLeft,
                                                child: const Text('\nName\n',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            const SizedBox(height: 5),
                                            TextFormField(
                                              controller: name,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText: "Enter full name"),
                                              validator: (value) {
                                                if (value!.isEmpty)
                                                  return 'Name cannot be Empty';
                                                return null;
                                              },
                                            ),
                                            Container(
                                                alignment: Alignment.topLeft,
                                                child: const Text(
                                                    '\nEmail address\n',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            const SizedBox(height: 5),
                                            TextFormField(
                                              controller: myController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText:
                                                      "Enter email address"),
                                              validator: (email) {
                                                if (isEmailValid(email!))
                                                  return null;
                                                return 'Enter valid email';
                                              },
                                            ),
                                            Container(
                                                alignment: Alignment.topLeft,
                                                child: const Text(
                                                    '\nPassword\n',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            const SizedBox(height: 5),
                                            TextFormField(
                                              controller: pwd,
                                              obscureText: _isHidden,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Enter password',
                                              ),
                                              validator: (value) {
                                                if (value!.isEmpty)
                                                  return 'Password cannot be Empty';
                                                return null;
                                              },
                                            ),
                                          ])),
                                    ]))),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(children: [
                                    SizedBox(
                                        height: 40,
                                        width: 350,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (formGlobalKey.currentState!
                                                    .validate()) {
                                                  formGlobalKey.currentState!
                                                      .save();
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (_) =>
                                                              SignIn()));
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(-13318564),
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Color(-13318564))),
                                            child: Text('Sign up',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white)))),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                              'Already have an account? ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey)),
                                          FlatButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            SignIn()));
                                              },
                                              child: const Text('Sign in? ',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color:
                                                          Color(-13318564)))),
                                        ])
                                  ]),
                                ))
                          ]))
                    ])))));
  }
}

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isEmailValid(String email) {
    var pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(email)) ? false : true;
  }

  bool isPhoneValid(String num) {
    var pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(num)) ? false : true;
  }

  final formGlobalKey = GlobalKey<FormState>();
  final name1 = TextEditingController();
  final name2 = TextEditingController();
  bool _isHidden = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(-13318564),
            body: SingleChildScrollView(
                child: Container(
                    //decoration: BoxDecoration(color: Color(-13318564)),
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
                                        builder: (_) => SignUp()));
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
                          child: Center(
                              child: Column(children: [
                            Expanded(
                                flex: 3,
                                child: Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(20),
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.white, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Column(children: <Widget>[
                                      const Text('Sign in',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      const Text(
                                          'Sign in with your email and password to continue',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black)),
                                      const Text('\n\n'),
                                      Form(
                                          key: formGlobalKey,
                                          child: Column(children: [
                                            Container(
                                                alignment: Alignment.topLeft,
                                                child: const Text(
                                                    '\nEmail/Phone number\n',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            const SizedBox(height: 5),
                                            TextFormField(
                                                controller: name1,
                                                decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    labelText:
                                                        "Enter email or phone number"),
                                                validator: (value) {
                                                  if (isEmailValid(value!) ||
                                                      isPhoneValid(value!))
                                                    return null;
                                                  return 'Enter valid email or phone number';
                                                }),
                                            Container(
                                              alignment: Alignment.topLeft,
                                              child: const Text('\nPassword\n',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black)),
                                            ),
                                            const SizedBox(height: 5),
                                            TextFormField(
                                                controller: name2,
                                                obscureText: _isHidden,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText: 'Enter password',
                                                ),
                                                validator: (value) {
                                                  if (value!.isEmpty)
                                                    return 'Password Cannot be Empty';
                                                  return null;
                                                }),
                                            Container(
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Row(children: [
                                                      Checkbox(
                                                        value: isChecked,
                                                        onChanged:
                                                            (bool? value) {
                                                          setState(() {
                                                            isChecked = value!;
                                                          });
                                                        },
                                                      ),
                                                      const Text('Remember me',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color:
                                                                  Colors.black))
                                                    ]),
                                                    FlatButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Forget password?',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                  ]),
                                            )
                                          ])),
                                    ]))),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.white,
                                              width: 1),
                                          borderRadius:
                                          BorderRadius.circular(12)),
                                      child: Column(children: [
                                        SizedBox(
                                            height: 40,
                                            width: 350,
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (formGlobalKey
                                                        .currentState!
                                                        .validate()) {
                                                      formGlobalKey
                                                          .currentState!
                                                          .save();
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  BtmNavBar()));
                                                    }
                                                  });
                                                },
                                                style: ElevatedButton
                                                    .styleFrom(
                                                    primary: Color(
                                                        -13318564),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Color(
                                                            -13318564))),
                                                child: Text(
                                                    'Sign in',
                                                    textAlign:
                                                    TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors
                                                            .white)))),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                  'Dont have any account? ',
                                                  textAlign:
                                                  TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color:
                                                      Colors.grey)),
                                              FlatButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (_) =>
                                                                SignUp()));
                                                  },
                                                  child: const Text(
                                                      'Sign up? ',
                                                      textAlign: TextAlign
                                                          .center,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Color(
                                                              -13318564)))),
                                            ])
                                      ]),
                                    )),
                          ])))
                    ])))));
  }
}
