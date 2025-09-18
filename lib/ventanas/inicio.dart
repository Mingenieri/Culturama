import 'package:culturama/recursos/colores.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  String nivelUsuario = "Principiante";
  String nombreUsuario = "Maicol";

  @override
  Widget build(BuildContext context) {
    final double anchoCampo = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  width: anchoCampo,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(2, 4), // posición (x,y): derecha, abajo
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: ColoresBase.amarillo,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bienvenido $nombreUsuario",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Nivel: $nivelUsuario",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: ColoresBase.azulOscuro,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1200",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    color: ColoresBase.verdeOscuro,
                                  ),
                                ),
                                Text(
                                  "Puntos",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    color: ColoresBase.verdeOscuro,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Estadisticas
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: Offset(
                                  2,
                                  4,
                                ), // posición (x,y): derecha, abajo
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.emoji_events,
                                color: Colors.orange,
                                size: 32,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "15",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Victorias"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: Offset(
                                  2,
                                  4,
                                ), // posición (x,y): derecha, abajo
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.red,
                                size: 32,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Rachas"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: Offset(
                                  2,
                                  4,
                                ), // posición (x,y): derecha, abajo
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 32),
                              SizedBox(height: 8),
                              Text(
                                "125",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Posición"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Seccion de opciones
                Text(
                  "JUEGOS",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(6),
                        elevation: 5,
                        color: ColoresBase.azulPalido,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(6),
                          splashColor: ColoresBase.azul.withOpacity(0.8),
                          highlightColor: ColoresBase.azul.withOpacity(0.4),
                          onTap: () {

                          },
                          child: Container(
                            // margin: EdgeInsets.symmetric(vertical: 10),
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text("ola"),
                          ),
                        )
                      ),

                      SizedBox(height: 15,), // separacion

                      Material(
                          borderRadius: BorderRadius.circular(6),
                          elevation: 5,
                          color: ColoresBase.rosaPalido,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6),
                            splashColor: ColoresBase.rosa.withOpacity(0.8),
                            highlightColor: ColoresBase.rosa.withOpacity(0.4),
                            onTap: () {

                            },
                            child: Container(
                              // margin: EdgeInsets.symmetric(vertical: 10),
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text("ola"),
                            ),
                          )
                      ),
                      SizedBox(height: 15,),

                      Material(
                          borderRadius: BorderRadius.circular(6),
                          elevation: 5,
                          color: Color(0xFF4F4F4F),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6),
                            splashColor: Colors.grey.withOpacity(0.8),
                            highlightColor: Colors.grey.withOpacity(0.4),
                            onTap: () {

                            },
                            child: Container(
                              // margin: EdgeInsets.symmetric(vertical: 10),
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text("ola"),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
