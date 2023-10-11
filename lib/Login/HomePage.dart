import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginprueba/Login/LoginAndRegister.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'Hola Mundo...!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
              ),
            ),
            CupertinoButton(
                child: const Text(
                  "Volver"
                ),
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => LoginPage())
                  );
                }
            )
          ],
        )
      ),
    );
  }
}
