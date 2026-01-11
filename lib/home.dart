import 'package:flutter/material.dart';

// Importa las pantallas
import 'crear_reporte.dart';
import 'mapa.dart';
import 'mis_reportes.dart';
import 'perfil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CIVIAPP - Inicio'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Mi Perfil',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PerfilScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Cerrar Sesión',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/',
                (route) => false,
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(  // ← AGREGADO PARA SCROLL
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),

              // ICONO Y BIENVENIDA
              const Icon(
                Icons.location_city,
                size: 80,
                color: Colors.blue,
              ),

              const SizedBox(height: 15),

              const Text(
                'Bienvenido a CIVIAPP',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),

              const Text(
                'San Juan de los Morros',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // TARJETA DE OPCIONES
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [

                      // BOTÓN: CREAR REPORTE
                      _menuButton(
                        icon: Icons.report_problem,
                        label: 'Reportar una Falla',
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CrearReporteScreen(),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 15),

                      // BOTÓN: VER MAPA
                      _menuButton(
                        icon: Icons.map,
                        label: 'Ver Mapa de Incidencias',
                        color: Colors.green,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MapaScreen(),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 15),

                      // BOTÓN: MIS REPORTES
                      _menuButton(
                        icon: Icons.list_alt,
                        label: 'Mis Reportes',
                        color: Colors.orange,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MisReportesScreen(),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 15),

                      // BOTÓN: MI PERFIL
                      _menuButton(
                        icon: Icons.person,
                        label: 'Mi Perfil',
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PerfilScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // INFORMACIÓN ADICIONAL
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.check_circle, color: Colors.green, size: 30),
                              SizedBox(height: 5),
                              Text('Rápido', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.security, color: Colors.blue, size: 30),
                              SizedBox(height: 5),
                              Text('Seguro', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.group, color: Colors.purple, size: 30),
                              SizedBox(height: 5),
                              Text('Comunitario', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Reporta fallas en servicios públicos de forma eficiente',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                '© 2025 CIVIAPP San Juan de los Morros',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // WIDGET REUTILIZABLE PARA BOTONES DEL MENÚ
  Widget _menuButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      icon: Icon(icon, size: 28),
      label: Text(
        label,
        style: const TextStyle(fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 3,
      ),
      onPressed: onPressed,
    );
  }
}