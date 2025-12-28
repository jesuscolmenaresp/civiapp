import 'package:flutter/material.dart';

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
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.water_drop, color: Colors.blue),
              title: Text('Fuga de agua'),
              subtitle: Text('Estado: Pendiente'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.orange),
              title: Text('Falla de alumbrado'),
              subtitle: Text('Estado: En proceso'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.delete, color: Colors.green),
              title: Text('Basura acumulada'),
              subtitle: Text('Estado: Resuelto'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
