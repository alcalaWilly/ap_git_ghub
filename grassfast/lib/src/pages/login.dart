import 'package:flutter/material.dart';
import 'package:grassfast/src/widgets/botons.dart';
import 'package:grassfast/src/widgets/cajaContenido.dart';
import 'package:grassfast/src/widgets/imgCirculo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
  color: Colors.grey[300], // Color de fondo plomo para todo el body
  child: Stack(
    children: [
      imgCirculo(),
      Positioned(
        top: (MediaQuery.of(context).size.height - 539) / 2,
        left: (MediaQuery.of(context).size.width - 364) / 2,
        child: Container(
          width: 364,
          height: 539,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Aquí se puede implementar la lógica para el inicio de sesión
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'Iniciar Sesión',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Navegar a la página de registro al presionar el botón
                            Navigator.pushNamed(context, 'Registro');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.green,
                                width: 2,
                              ),
                            ),
                            child: const Text(
                              'Registrarse',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                cajaContenido(context, icono: 'persona', dato: 'Usuario'),
                const SizedBox(height: 50),
                cajaContenido(context, icono: 'contraseña', dato: 'contraseña'),
                const SizedBox(height: 80),
                botons(context, texto: 'Ingresar'),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
),

    );
  }

  

  
}