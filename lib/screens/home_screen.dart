import 'package:flutter/material.dart';
import 'package:reseller/components/custom_animation.dart';
import 'package:reseller/components/custom_buttom.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         fit: StackFit.expand,
         children: <Widget>[
           Image.asset("assets/images/bg_02.jpg", fit: BoxFit.cover),
           Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,
             color: Color(0xFFF001117).withOpacity(0.7),
           ),
           Container(
             padding: EdgeInsets.symmetric(horizontal: 30),
             margin: EdgeInsets.only(top: 80, bottom: 80),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                Column(
                   children: <Widget>[
                  Text("Tus ofertas en", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 2
                 )),
                 Text("RESELLERS", style: TextStyle(
                   color: Colors.white,
                   fontSize:45,
                   fontWeight: FontWeight.bold
                 )),
                   ]
                 ),
                 Container(
                   height: 120,
                   width: double.infinity,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage('assets/images/skyline.png'),
                     fit: BoxFit.contain)
                    
                   ),
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     CustomButtom(
                       label: "Regístrate",
                       background: Colors.transparent,
                       borderColor: Colors.white,
                       fontColor: Colors.white,
                       ),
                      SizedBox(height: 20),
                      CustomAnimation(
                        label: "Continuar",
                        background: Colors.white,
                        borderColor: Colors.white,
                        fontColor: Color(0xFFF001117),
                      )
                   ]
                 )
               ]
             ),
           )
         ]
       ),
    );
  }
}