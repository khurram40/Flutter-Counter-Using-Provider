import 'package:flutter/material.dart';
import 'package:counter_app/services/incrementValue.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//  IncrementValue obj = IncrementValue();
  //String value;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    IncrementValue incrementValue= Provider.of<IncrementValue>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            incrementValue.getValue,
            style: TextStyle(fontSize: 30, letterSpacing: 2.0),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
              child: Text(
                "Reset",
                style: TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              onPressed: () {
                //obj.resetValue();
                // setState(() {
                //value = obj.value;
                // });
                 incrementValue.resetValue();
              }),
          Row()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //obj.updateValue();
          // setState(() {
          //value = obj.value;
          // });
          incrementValue.updateValue();
         // context.watch<IncrementValue>().updateValue();
        },
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.add),
      ),
    );
  }
}
