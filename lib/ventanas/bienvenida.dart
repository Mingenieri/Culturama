import 'package:culturama/ventanas/inicio_sesion.dart';
import 'package:culturama/ventanas/registro.dart';
import 'package:flutter/material.dart';
import 'package:culturama/recursos/colores.dart';

class Bienvenida extends StatefulWidget {
  const Bienvenida({super.key});

  @override
  State<Bienvenida> createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // logo
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: ColoresBase.amarillo,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30), // separación

            Text(
              "Culturama",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: ColoresBase.rosaPalido,
                letterSpacing: 2,
              ),
            ),

            Text(
              "Descubri todo sobre Nicaragua",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 30), // separación

            Container(
              width: 340,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Bienvenido",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: ColoresBase.verdePalido,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 30), // separación

                    Text(
                      "Explorá la riqueza que nos hace únicos como nicaragüenses",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: Colors.black,
                        letterSpacing: 2,
                      ),
                    )
                  ],
                ),
              ),
            ), // Texto Bienvenida

            const SizedBox(height: 30), // separación

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                        builder: (context) => InicioSesion(),
                    )
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(340, 40),
                  backgroundColor: ColoresBase.azul, // color del botón
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: Text(
                  "Iniciar Sesion",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
            ),

            const SizedBox(height: 20), // separación

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Registro())
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(340, 40),
                backgroundColor: Colors.white, // color del botón
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: BorderSide(                       // borde alrededor
                    color: ColoresBase.azulPalido,
                    width: 2,            // grosor del borde
                  ),
                ),
              ),
              child: Text(
                "Registrarse",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}