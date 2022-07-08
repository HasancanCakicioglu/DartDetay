import 'package:flutter/material.dart';


class oyunListeGuncellemeclass extends StatefulWidget {
  oyunListeGuncellemeclass({Key? key}) : super(key: key);

  @override
  State<oyunListeGuncellemeclass> createState() => _oyunListeGuncellemeclassState();
}

class _oyunListeGuncellemeclassState extends State<oyunListeGuncellemeclass> with TickerProviderStateMixin {

  late AnimationController controller;

  List<yer> yerListe=[
    yer(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this,duration: const Duration(seconds: 10));
    controller.addListener(updatem);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }



  updatem(){
    print("update");
    for(yer y in yerListe){

      y.increase();

    }
  }



  @override
  Widget build(BuildContext context) {

    List<Widget> children = [];
    for(yer object in [...yerListe]){
      
      children.add(
        AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            
            return Positioned(
              left: object.x.toDouble(),
              

              child: Container(color: Colors.black,height: 20,width: 20,),
            );
          },
        ),
      );
    }
    
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container(color: Colors.green,),flex: 2,),
            AnimatedContainer(
              child: Expanded(child: Stack(
              children: [
                
                
                Container(color: Colors.yellow),
                ...children,
              ],
            ),flex: 1,),
              duration:Duration(milliseconds: 5000) ),
          ],
        ),
      ),
    );
  }
}


class yer{

  int x=0;

  increase(){
    x=x+5;
  }
     
}