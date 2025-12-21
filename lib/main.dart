import 'package:flutter/material.dart';
import 'registro.dart'; // IMPORTANTE: Esto conecta con tu otro archivo

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CIVIAPP San Juan', // Nombre oficial de tu proyecto [cite: 3]
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView( // Agregado para evitar errores de espacio
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80), // Espacio superior
              const Icon(Icons.lock_person, size: 100, color: Colors.blue),
              const SizedBox(height: 20),
              const Text(
                'CIVIAPP San Juan',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              
              // Campo de Usuario (Correo)
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 15),
              
              // Campo de Contraseña
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              
              // Opción de Recuperar Contraseña 
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    print("Navegando a recuperar contraseña...");
                  },
                  child: const Text('¿Olvidaste tu contraseña?'),
                ),
              ),
              
              const SizedBox(height: 15),
              
              // Botón de Entrar
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    print("Validando datos en base de datos MySQL...");
                  },
                  child: const Text('INICIAR SESIÓN', style: TextStyle(fontSize: 18)),
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Botón para ir al Registro 
              TextButton(
                onPressed: () {
                  // Esta línea hace la magia de cambiar de pantalla
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegistroScreen()),
                  );
                },
                child: const Text('¿No tienes cuenta? Regístrate aquí', 
                  style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}