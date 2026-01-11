import 'package:flutter/material.dart';

class DetalleReporteScreen extends StatelessWidget {
  const DetalleReporteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del Reporte'),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // 🟦 TIPO DE FALLA
            _infoCard(
              icon: Icons.report_problem,
              title: 'Tipo de Falla',
              content: 'Fuga de Agua',
            ),

            // 🟦 ESTADO
            _estadoCard('En proceso'),

            // 🟦 DESCRIPCIÓN
            _infoCard(
              icon: Icons.description,
              title: 'Descripción',
              content:
                  'Se observa una fuga de agua constante desde una tubería rota frente a la vivienda.',
            ),

            // 🟦 FECHA
            _infoCard(
              icon: Icons.calendar_today,
              title: 'Fecha del Reporte',
              content: '20 / 01 / 2025',
            ),

            // 🟦 UBICACIÓN
            _infoCard(
              icon: Icons.location_on,
              title: 'Ubicación',
              content: 'Av. Bolívar, Sector Centro',
            ),

            // 🟦 IMAGEN (SIMULADA)
            const SizedBox(height: 20),
            const Text(
              'Foto del Reporte',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(Icons.image, size: 80, color: Colors.grey),
              ),
            ),

            const SizedBox(height: 30),

            // 🟦 BOTÓN VOLVER
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_back),
              label: const Text('VOLVER'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 TARJETA DE INFORMACIÓN
  Widget _infoCard({
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.blue, size: 30),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    content,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 TARJETA DE ESTADO
  Widget _estadoCard(String estado) {
    Color color;

    switch (estado) {
      case 'Resuelto':
        color = Colors.green;
        break;
      case 'En proceso':
        color = Colors.orange;
        break;
      default:
        color = Colors.red;
    }

    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            const Icon(Icons.info, size: 30),
            const SizedBox(width: 15),
            const Text(
              'Estado:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            Chip(
              label: Text(
                estado,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: color,
            ),
          ],
        ),
      ),
    );
  }
}
