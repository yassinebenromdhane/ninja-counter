import 'package:flutter/material.dart';


class ContainE extends StatelessWidget {
  const ContainE({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          Text('hello row'),
          TextButton(
            child: Text('this is'),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellowAccent)),
            onPressed: () {
              print('clicked abc icon');
            },
          
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
           Container(
            margin: EdgeInsets.only(left: 20.0),
            color: Colors.amber,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
           Container(
            margin: EdgeInsets.only(left: 20.0),
            color: Colors.lightBlue,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
          
        ],
      );
  }
}
