import 'package:flutter/material.dart';

class mapclass extends StatefulWidget {
  mapclass({Key? key}) : super(key: key);

  @override
  State<mapclass> createState() => _mapclassState();
}

class _mapclassState extends State<mapclass> {
  Map mapim = {"name":"ali","yas":20,"cinsiyet":true,"silinecek":"heyyooo"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map"),
      ),
      body: Container(
        child: ElevatedButton(onPressed: (){
          debugPrint("mapim.entries = "+mapim.entries.toString());
          debugPrint("mapim.keys = "+mapim.keys.toString());
          debugPrint("mapim.lenght = "+mapim.length.toString());
          debugPrint("mapim.values = "+mapim.values.toString());
          debugPrint("mapim.cast = "+mapim.cast().toString());
          debugPrint("mapim.containsKey(name) = "+mapim.containsKey("name").toString());
          debugPrint("mapim.containsValue(20 = "+mapim.containsValue(20).toString());
          
          //addentries
          
          mapim.forEach((key, value) {
            debugPrint("foreach : key = $key ||| value = $value");
          });          
          mapim.putIfAbsent("32",()=>"putIfAbsentIleEklenen"); // eğer öyle bir key yoksa o value ile keyi mape ekler
          debugPrint("mapim.putIfAbsent = "+mapim.toString());

          debugPrint("mapim.remove(silinecek) = "+mapim.remove("silinecek"));
          mapim.removeWhere((key, value) => (value == "ali"));
          debugPrint("mapim = "+mapim.toString());
          debugPrint("mapim.update(yas) = "+mapim.update("yas", (value) => value+10).toString());
          
        }, child: Text("Map")),
      ),
    );
  }
}