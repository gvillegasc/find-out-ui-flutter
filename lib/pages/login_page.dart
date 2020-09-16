import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Container(
          height: screenSize.height,
          child: Stack(
            children: [
              Positioned(
                  child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(screenSize.height * 0.05),
                      bottomRight: Radius.circular(screenSize.height * 0.05),
                    ),
                    child: Container(
                      height: screenSize.height * 0.6,
                      width: screenSize.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft:
                                Radius.circular(screenSize.height * 0.05),
                            bottomRight:
                                Radius.circular(screenSize.height * 0.05),
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: ExactAssetImage(
                                  'assets/images/federico-gutierrez-IqW8saasx0E-unsplash.jpg'))),
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                          )),
                    ),
                  ),
                  Positioned(
                    top: screenSize.height * 0.12,
                    left: screenSize.width * 0.32,
                    child: Container(
                      child: Text(
                        "find",
                        style: TextStyle(
                            fontSize: screenSize.height * 0.07,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenSize.height * 0.17,
                    right: screenSize.width * 0.32,
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "ut",
                            style: TextStyle(
                                fontSize: screenSize.height * 0.07,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: screenSize.height * 0.17,
                    right: screenSize.width * 0.40,
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.search,
                        color: Color(0xffFF256C),
                        size: screenSize.height * 0.08,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: screenSize.width,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                bottom: screenSize.height * 0.04),
                            child: Text(
                              "Iniciar sesión",
                              style: TextStyle(
                                  fontSize: screenSize.height * 0.034,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: screenSize.height * 0.01),
                            child: Text(
                              "Desliza para ir hacia atrás",
                              style: TextStyle(
                                  fontSize: screenSize.height * 0.015,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: screenSize.height * 0.02),
                            child: Transform.rotate(
                              angle: 270 * pi / 180,
                              child: Icon(
                                CupertinoIcons.back,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
              Positioned(
                bottom: 0,
                child: Container(
                  height: screenSize.height * 0.4,
                  width: screenSize.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: screenSize.height * 0.05),
                        padding: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Usuario',
                              prefixIcon: Icon(
                                Icons.person_add,
                                color: Color(0xffFF256C),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: screenSize.height * 0.03),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ]),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Contraseña',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xffFF256C),
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: screenSize.height * 0.02),
                        child: Text(
                          "¿Olvidaste tu contraseña?",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: screenSize.height * 0.018),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: screenSize.height * 0.04),
                        height: screenSize.height * 0.06,
                        width: screenSize.width * 0.7,
                        decoration: BoxDecoration(
                            color: Color(0xffFF256C),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenSize.height * 0.015))),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  screenSize.height * 0.015)),
                          color: Colors.transparent,
                          onPressed: () {},
                          child: Text(
                            "Iniciar sesión",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenSize.height * 0.023,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
