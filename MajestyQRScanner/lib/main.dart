import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    title: 'Majesty QR Scanner',
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Majesty QR Scanner'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 400,
          child: Column(
            children: <Widget>[
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CupertinoButton(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text('Scan'),
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CupertinoButton(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text('Generate'),
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
