import 'package:flutter/material.dart';

class CustomAnimation extends StatefulWidget {
  final String label;
  final Color background;
  final Color borderColor;
  final Color fontColor;
  final Function onTap;
  CustomAnimation({Key key, this.label, this.background, this.borderColor, this.fontColor, this.onTap}) : super(key: key);

  @override
  _CustomAnimationState createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation> 
  with TickerProviderStateMixin{
    
    AnimationController _scaleController;
    Animation<double> _scaleAnimation;
    bool _isTextHide = false;

    @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(vsync: this,
    duration: Duration(milliseconds: 350)
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 32.0)
    .animate(_scaleController)..addStatusListener((status) {
      if(status == AnimationStatus.completed){
        
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: (){
         setState(() {
           _isTextHide = true;
         });
         _scaleController.forward();
       },
         child: AnimatedBuilder(
           animation: _scaleController,
           builder: (context, child) => Transform.scale(
             scale: _scaleAnimation.value,
          child: Container(
             height: 63,
             alignment: Alignment.center,
             decoration: BoxDecoration(
              color: widget.background,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: widget.background,
                width: 1
              )
             ),
             child: !_isTextHide ? Text(widget.label, style: TextStyle(
               color: widget.fontColor,
               fontSize: 20,
               fontWeight: FontWeight.bold
             )): Container(),
           )),
         )
    );
  }
}