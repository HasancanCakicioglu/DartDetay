import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataService extends ChangeNotifier{

  Option<List<int>> dataOption = none();

  fetchData(){
    Future.delayed(const Duration(seconds: 1),(){
      final fetchedData = [1,2,3];
      dataOption = some(fetchedData);
      notifyListeners();
    });
  }


}

class FetchData_1class extends StatelessWidget {
  const FetchData_1class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataService>(create:(context)=>DataService()..fetchData(),
    child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<DataService>(builder: (context,value,child){
      return value.dataOption.fold(() => const Text("Fetching entries"), (data) => Text("${data.length} entries fetched"));
    }),
      )
    ),
    );
  }
}