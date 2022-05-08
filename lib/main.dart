import 'package:flutter/material.dart';
import 'package:test_app/widget/ContainE.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLvl = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Id App Bare'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>  setState(() {
          ninjaLvl+=1;
        }),
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        
        ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/ok.jpeg'
                ) ,
                radius: 40.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey[800],
            ),
            SizedBox(height : 20.0),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Yassine-li',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ) ,
              ),
              SizedBox(height: 30.0,),
              Text(
              'Ninja Curent level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$ninjaLvl',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ) ,
              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget> [
                  Icon(
                    Icons.mail,
                    color: Colors.grey[400],

                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    'yassine.benromdhane@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0
                    ),
                    )
                ],
              )
          ],
        ),
      ),
    );
  }
}