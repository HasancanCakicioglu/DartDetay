import 'package:dartdetay/Call/callModel.dart';
import 'package:flutter/material.dart';

class callclass extends StatefulWidget {
  callclass({Key? key}) : super(key: key);

  @override
  State<callclass> createState() => _callclassState();
}

class _callclassState extends State<callclass> {
  late myCallModel myModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myModel = myCallModel();
    myModel("ali");
    myModel("fatma");
    debugPrint("identical = ${identical(myModel("ali"),myModel("fatma"))}");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("call"),
      ),
    );
  }
}