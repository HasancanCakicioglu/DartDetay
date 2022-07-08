import 'package:flutter/material.dart';

class addPostFrameCallbackclass extends StatefulWidget {
  addPostFrameCallbackclass({Key? key}) : super(key: key);

  @override
  State<addPostFrameCallbackclass> createState() => _addPostFrameCallbackclassState();
}

class _addPostFrameCallbackclassState extends State<addPostFrameCallbackclass> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    //         HATA VERİR ÇÜNKÜ DAHA CONTEXT OLUŞTURULMADI
    // showDialog(context: context, builder: (context){
    //     return AlertDialog(title: Text("Alert Dialog"),);
    //    });


    // addPostFrameCallBack contextin oluşturulmasını bekler sonra çalışıtır
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
      debugPrint("timeStamp = $timeStamp");
      showDialog(context: context, builder: (context){
        return AlertDialog(title: Text("Alert Dialog"),);
      });

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("addPostFrameCallback"),
      ),
    );
  }
}