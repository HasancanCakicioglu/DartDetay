import 'package:flutter/material.dart';

class string1 extends StatefulWidget {
  string1({Key? key}) : super(key: key);
  
  @override
  State<string1> createState() => _string1State();
}

class _string1State extends State<string1> {
  String str = "ahmet";
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("String"),
      ),
      body: Container(
        child: ElevatedButton(onPressed: (){
          debugPrint("str.characters "+str.characters.toString());
          debugPrint("str.codeunits "+str.codeUnits.toString());
          debugPrint("str.runes "+str.runes.toString());
          //debugPrint("str.characters"+str.allMatches("ah"[]).toString());
          debugPrint("str.padLeft(2) "+str.padLeft(5));
          debugPrint("str.padLeft(2,**) "+str.padLeft(5,"**"));
          //replaceAllMapped
          debugPrint("str.replaceFirst "+str.replaceFirst("a","99"));
          debugPrint("str.replaceRange(3,null,obobobobo) "+str.replaceRange(3,null,"obobobobo"));
          debugPrint("str.substring(1,3) "+str.substring(1,3));
          debugPrint("trim"+"deneme trim bu    ".trim());
          debugPrint("trimRight()"+"deneme trim bu    ".trimRight());
          debugPrint("str.codeUnitAt(3) "+str.codeUnitAt(3).toString());
          debugPrint("str.compareTo(ab) "+str.compareTo("ab").toString());
          debugPrint("str.contains(a) "+str.contains("a").toString());
          debugPrint("str.endsWith(er) "+str.endsWith("er").toString());//er ile biten varmı true false
          debugPrint("str.indexOf(ab) "+str.indexOf("ab").toString());// stringin içinde hangi indexte ab var
          debugPrint("str.lastIndexOf(a) "+str.lastIndexOf("a").toString());// en son nerde a var
          debugPrint("str.split(g) "+"merhaba dünya hoyyy".split("g").toString());
          debugPrint("str.startsWith(a) "+str.startsWith("a").toString());// a ilemi başlıyor
        }, child: Text("string")),
      ),
    );
  }
}