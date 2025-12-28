import 'package:flutter/material.dart';

// Importa las pantallas (aunque aún no existan, las crearás luego)
import 'crear_reporte.dart';
import 'mapa.dart';
import 'mis_reportes.dart';

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
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Cerrar sesión → vuelve al login
              Navigator.pop(context);
            },
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const Text(
              'Bienvenido a CIVIAPP San Juan',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // BOTÓN: CREAR REPORTE
            ElevatedButton.icon(
              icon: const Icon(Icons.report),
              label: const Text('Reportar una Falla'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
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
            ElevatedButton.icon(
              icon: const Icon(Icons.map),
              label: const Text('Ver Mapa de Incidencias'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
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
            ElevatedButton.icon(
              icon: const Icon(Icons.list),
              label: const Text('Mis Reportes'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MisReportesScreen(),
                  ),
                );
              },
            ),

            const Spacer(),

            const Text(
              '© 2025 CIVIAPP San Juan',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
