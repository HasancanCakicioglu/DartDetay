import 'package:flutter/material.dart';


class enum1 extends StatefulWidget {
  enum1({Key? key}) : super(key: key);

  @override
  State<enum1> createState() => _enum1State();
}

class _enum1State extends State<enum1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Text(Status.error.toString()),
            Text(New.name.toString()),
            Text(New.name.name),
            Text(New.name.deneme),
            Text(New.age.deneme),
            Text(New.name.index.toString()),
          ],
        ),
      ),
    );
  }
}


enum Status{
  loading,
  loaded,
  waiting,
  error, 

}


enum New{
  name("ali"),
  age("25");

  final String deneme;
  const New(this.deneme);
}



enum Language {
  dart("2.17.0"),
  ruby("3.1.2"),
  python("3.10.4");

  final String version;
  const Language(this.version);

  @override
  String toString() => "The latest version is $version";
}