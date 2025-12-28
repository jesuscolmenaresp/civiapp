import 'package:flutter/material.dart';

class CrearReporteScreen extends StatelessWidget {
  const CrearReporteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Reporte'),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              const Text(
                'Reportar una falla en tu comunidad',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              // CATEGORÍA
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Tipo de falla',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'Agua', child: Text('Agua')),
                  DropdownMenuItem(value: 'Electricidad', child: Text('Electricidad')),
                  DropdownMenuItem(value: 'Basura', child: Text('Basura')),
                  DropdownMenuItem(value: 'Alumbrado', child: Text('Alumbrado Público')),
                ],
                onChanged: (value) {},
              ),

              const SizedBox(height: 15),

              // DESCRIPCIÓN
              const TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Descripción del problema',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              // UBICACIÓN
              ElevatedButton.icon(
                icon: const Icon(Icons.location_on),
                label: const Text('Obtener Ubicación'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Ubicación capturada (simulado)')),
                  );
                },
              ),

              const SizedBox(height: 15),

              // FOTO
              ElevatedButton.icon(
                icon: const Icon(Icons.camera_alt),
                label: const Text('Adjuntar Foto'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Foto adjuntada (simulado)')),
                  );
                },
              ),

              const SizedBox(height: 25),

              // ENVIAR
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Reporte enviado correctamente')),
                  );
                  Navigator.pop(context);
                },
                child: const Text('ENVIAR REPORTE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
