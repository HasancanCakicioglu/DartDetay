import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataService2 extends ChangeNotifier{

  Option<Either<Unit,List<int>>> dataEO = none();

  fetchData(){
    Future.delayed(const Duration(seconds: 1),(){
      final fetchedData = [1,2,3];
      if(Random().nextBool()){
        final fetchData = [1,2,3];
        dataEO = some(right(fetchData));
      }else{
        dataEO = some(left(unit));
      }
      notifyListeners();
    });
  }


}

class FetchData_2class extends StatelessWidget {
  const FetchData_2class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataService2>(create:(context)=>DataService2()..fetchData(),
    child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<DataService2>(builder: (context,value,child){
      return value.dataEO.fold(
        () => const Text("fetching data"), 
        (dataE) => dataE.fold(
          (failure) => const Text("Fetch unsuccessful error"),
          (data) => Text("${data.length} entries fetched /2")));
    }),
      )
    ),
    );
  }
}