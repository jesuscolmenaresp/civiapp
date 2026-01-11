import 'package:flutter/material.dart';
import 'detalle_reporte.dart'; // 👈 IMPORTAMOS EL DETALLE

class MisReportesScreen extends StatelessWidget {
  const MisReportesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Reportes'),
        backgroundColor: Colors.blue,
      ),

      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [

          // 🔹 REPORTE 1
          Card(
            child: ListTile(
              leading: const Icon(Icons.water_drop, color: Colors.blue),
              title: const Text('Fuga de agua'),
              subtitle: const Text('Estado: Pendiente'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetalleReporteScreen(),
                  ),
                );
              },
            ),
          ),

          // 🔹 REPORTE 2
          Card(
            child: ListTile(
              leading: const Icon(Icons.lightbulb, color: Colors.orange),
              title: const Text('Falla de alumbrado'),
              subtitle: const Text('Estado: En proceso'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetalleReporteScreen(),
                  ),
                );
              },
            ),
          ),

          // 🔹 REPORTE 3
          Card(
            child: ListTile(
              leading: const Icon(Icons.delete, color: Colors.green),
              title: const Text('Basura acumulada'),
              subtitle: const Text('Estado: Resuelto'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetalleReporteScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
