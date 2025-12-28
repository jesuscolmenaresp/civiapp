import 'package:flutter/material.dart';

class MapaScreen extends StatelessWidget {
  const MapaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa de Incidencias'),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        children: [

          // 🔹 Simulación del Mapa
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.blue.shade100,
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.map, size: 80, color: Colors.blue),
                  SizedBox(height: 10),
                  Text(
                    'Mapa de Reportes\n(Próximamente GPS)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          // 🔹 Lista de reportes simulados
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [

                _reporteItem(
                  icon: Icons.flash_on,
                  titulo: 'Corte Eléctrico',
                  descripcion: 'Falla eléctrica en sector Centro',
                  estado: 'Pendiente',
                ),

                _reporteItem(
                  icon: Icons.water_drop,
                  titulo: 'Fuga de Agua',
                  descripcion: 'Tubería rota en Av. Bolívar',
                  estado: 'En proceso',
                ),

                _reporteItem(
                  icon: Icons.lightbulb,
                  titulo: 'Alumbrado Público',
                  descripcion: 'Poste sin luz en calle Miranda',
                  estado: 'Resuelto',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Widget reutilizable para cada reporte
  Widget _reporteItem({
    required IconData icon,
    required String titulo,
    required String descripcion,
    required String estado,
  }) {
    Color estadoColor;

    switch (estado) {
      case 'Resuelto':
        estadoColor = Colors.green;
        break;
      case 'En proceso':
        estadoColor = Colors.orange;
        break;
      default:
        estadoColor = Colors.red;
    }

    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue, size: 40),
        title: Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(descripcion),
        trailing: Text(
          estado,
          style: TextStyle(
            color: estadoColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
