import 'package:flutter/material.dart';

class RecuperarContrasenaScreen extends StatelessWidget {
  const RecuperarContrasenaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar Contraseña'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              
              // ICONO PRINCIPAL
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.lock_reset,
                  size: 70,
                  color: Colors.blue,
                ),
              ),
              
              const SizedBox(height: 30),
              
              // TÍTULO
              const Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 15),
              
              // DESCRIPCIÓN
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'No te preocupes. Introduce tu correo electrónico y te enviaremos un enlace para restablecer tu contraseña.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
              ),
              
              const SizedBox(height: 40),
              
              // CARD CON FORMULARIO
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      // ICONO DE CORREO
                      const Icon(
                        Icons.email_outlined,
                        size: 40,
                        color: Colors.blue,
                      ),
                      
                      const SizedBox(height: 20),
                      
                      // CAMPO DE CORREO
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Correo Electrónico',
                          hintText: 'ejemplo@email.com',
                          prefixIcon: const Icon(Icons.email_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade50,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      
                      const SizedBox(height: 30),
                      
                      // BOTÓN ENVIAR ENLACE
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 3,
                          ),
                          onPressed: () {
                            // Mostrar mensaje de confirmación
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Row(
                                  children: [
                                    Icon(Icons.check_circle, color: Colors.white),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        'Enlace de recuperación enviado con éxito',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                backgroundColor: Colors.green,
                                duration: const Duration(seconds: 4),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            );
                            
                            // Esperar 2 segundos y volver al login
                            Future.delayed(const Duration(seconds: 2), () {
                              Navigator.pop(context);
                            });
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.send, size: 22),
                              SizedBox(width: 10),
                              Text(
                                'ENVIAR ENLACE',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                      
                      // BOTÓN DE AYUDA
                      TextButton.icon(
                        icon: const Icon(Icons.help_outline, size: 18),
                        label: const Text(
                          '¿No recibiste el correo? Revisa la carpeta de spam',
                          style: TextStyle(fontSize: 14),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Revisa tu carpeta de spam o solicita otro enlace'),
                              duration: Duration(seconds: 3),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 30),
              
              // PASOS DE RECUPERACIÓN
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pasos a seguir:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      
                      const SizedBox(height: 15),
                      
                      _stepItem(
                        number: 1,
                        text: 'Introduce tu correo electrónico registrado',
                      ),
                      
                      const SizedBox(height: 12),
                      
                      _stepItem(
                        number: 2,
                        text: 'Revisa tu bandeja de entrada (y spam)',
                      ),
                      
                      const SizedBox(height: 12),
                      
                      _stepItem(
                        number: 3,
                        text: 'Haz clic en el enlace de recuperación',
                      ),
                      
                      const SizedBox(height: 12),
                      
                      _stepItem(
                        number: 4,
                        text: 'Crea una nueva contraseña segura',
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 25),
              
              // BOTÓN VOLVER AL LOGIN
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.arrow_back_rounded),
                  label: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'VOLVER AL INICIO DE SESIÓN',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              
              const SizedBox(height: 30),
              
              // INFORMACIÓN DE CONTACTO
              const Text(
                '¿Problemas para recuperar tu cuenta?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              
              const SizedBox(height: 10),
              
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Contactar soporte técnico (próximamente)'),
                    ),
                  );
                },
                child: const Text(
                  'Contactar soporte técnico',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  // WIDGET PARA ÍTEM DE PASO
  Widget _stepItem({required int number, required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text(
              number.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
        
        const SizedBox(width: 15),
        
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}