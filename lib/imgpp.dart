import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class Imgpp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _ImgppState();
  }
}

class _ImgppState extends State<Imgpp> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();  
      return Center(
      child:Container(width:200,
      child:Image.asset('assets/img/13754149_1889410001286321_6208709685327386948_n.jpg'),
      
      )
      
    );
  }
}