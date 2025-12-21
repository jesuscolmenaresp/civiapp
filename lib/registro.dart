import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Cuenta - CIVIAPP'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView( // Esto permite que la pantalla suba y baje
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Únete a CIVIAPP San Juan',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              
              // Los campos de texto abajo coinciden con tu tabla de SQL
              const TextField(decoration: InputDecoration(labelText: 'Nombre')), // Campo: nombre [cite: 55]
              const SizedBox(height: 10),
              const TextField(decoration: InputDecoration(labelText: 'Apellido')), // Campo: apellido [cite: 55]
              const SizedBox(height: 10),
              const TextField(decoration: InputDecoration(labelText: 'Correo Electrónico')), // Campo: correo [cite: 55]
              const SizedBox(height: 10),
              const TextField(decoration: InputDecoration(labelText: 'Teléfono (Opcional)')), // Campo: telefono [cite: 55]
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(labelText: 'Contraseña'), // Campo: contraseña [cite: 55]
                obscureText: true, // Para ocultar la clave
              ),
              
              const SizedBox(height: 30),
              
              ElevatedButton(
                onPressed: () {
                  // Aquí es donde se conectará con el Node.js de tu equipo más adelante
                  print("Enviando datos al servidor...");
                },
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 15)),
                child: const Text('REGISTRARSE', style: TextStyle(fontSize: 16)),
              ),
              
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Esto regresa al Login
                },
                child: const Text('¿Ya tienes cuenta? Inicia sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}