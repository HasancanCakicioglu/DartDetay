import 'package:flutter/material.dart';

class mountedclass extends StatefulWidget {
  mountedclass({Key? key}) : super(key: key);

  @override
  State<mountedclass> createState() => _mountedclassState();
}

class _mountedclassState extends State<mountedclass> {
  int count = 0;


  //bu örnekte 30 saniye sonra setstate yap denilmiş ancak 30 saniye sonra sayfa kapatılabilir
  //bu sebepten önce kontrol ediyor sayfa kapatılmadıysa setstate yap kapatıldıysa yapma
  

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 30), () {
      if (mounted) setState(() => count = 5);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mounted"),
      ),
      body: Text("Mounted state hala hayattamı diye kontrol eder "),
    );
  }
}