import 'package:flutter/material.dart';
import 'package:loginprueba/Login/Clases.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {

  late TabController tabController;

  late int index;

  late bool imagen = true;

  //funcion void del tab
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {
        index = tabController.index;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Widget que almacena las diferentes vistas del responsive
    return LayoutBuilder(
        builder: (context, responsive){
          //primera vista del responsive
          if(responsive.maxWidth == 375){
            //Este condicional es para la imagen que dependiendo donde este ubicado en el tab asi mismo sera la imagen
            if(tabController.index == 1){
              imagen = true;
            }else{
              imagen = false;
            }
            return Scaffold(
                backgroundColor: Color(0xFF1C0E38),
                body: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              imagen ? '../images/imagen6.jpg' : '../images/imagen7.jpg'
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Login(tabController: tabController),
                )
            );
          }else if (responsive.maxWidth <= 300){
            if(tabController.index == 1){
              imagen = true;
            }else{
              imagen = false;
            }
            return Scaffold(
              backgroundColor: Color(0xFF1C0E38),
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            imagen ? '../images/imagen4.jpg' : '../images/imagen5.jpg'
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Login(tabController: tabController),
              )
            );
          }else if(responsive.maxWidth <= 500){
            if(tabController.index == 1){
              imagen = true;
            }else{
              imagen = false;
            }
            return Scaffold(
                backgroundColor: Color(0xFF1C0E38),
                body: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              imagen ? '../images/imagen4.jpg' : '../images/imagen5.jpg'
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Login(tabController: tabController),
                )
            );
          }else if(responsive.maxWidth >=1000){
            if(tabController.index == 1){
              imagen = true;
            }else{
              imagen = false;
            }
            return Scaffold(
              backgroundColor: Color(0xFF1C0E38),
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      //imagen ? '../images/imagen8.jpg' : '../images/imagen7.jpg'
                        '../images/imagen7.jpg'
                    ),
                    fit: BoxFit.cover
                  )
                ),
                child: Login(tabController: tabController),
              )
            );
          } else{
            if(tabController.index == 1){
              imagen = true;
            }else{
              imagen = false;
            }
            return Scaffold(
                backgroundColor: Color(0xFF1C0E38),
                body: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              imagen ? '../images/imagen4.jpg' : '../images/imagen5.jpg'
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Login(tabController: tabController),
                )
            );
          }
        }
    );
  }
}
