import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';



class MyCenter extends SingleChildRenderObjectWidget{

  @override
  RenderObject createRenderObject(Object context) {
    
    return _RenderMyCenter();
  }



}

class _RenderMyCenter extends RenderBox with RenderObjectWithChildMixin{

  @override
  void performLayout(){
    

    if(child != null){
      child!.layout(constraints.loosen(),parentUsesSize: true);

      double dx = (constraints.maxWidth);
      double dy = (constraints.maxHeight);

      ParentData childParentData = child!.parentData!;
      
    }

  }

}
