import 'package:dartdetay/Dartz/Either/1/dartEitherModel1.dart';
import 'package:flutter/material.dart';



class dartzEither1view extends StatefulWidget {
  dartzEither1view({Key? key}) : super(key: key);

  @override
  State<dartzEither1view> createState() => _dartzEither1viewState();
}

class _dartzEither1viewState extends State<dartzEither1view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
            var gelen = LoginRepository().login();

            gelen.fold((l) => print("l = $l"), (r) => print("r = $r"));

              

            }, child: Text("çek")),

          ],
        ),
      ),
    );
  }
}