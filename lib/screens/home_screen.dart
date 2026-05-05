import 'package:flutter/material.dart';
import 'package:inventario_suqui_cell/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> categories = const [
    {'title': 'Accesorios', 'icon': Icons.headphones},
    {'title': 'Repuestos', 'icon': Icons.build},
    {'title': 'Herramientas y equipos', 'icon': Icons.handyman},
    {'title': 'Servicios técnicos', 'icon': Icons.design_services},
    {'title': 'Componentes electrónicos', 'icon': Icons.memory},
    {'title': 'Protección y limpieza', 'icon': Icons.cleaning_services},
    {'title': 'Tecnología y gadgets', 'icon': Icons.devices},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 30,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.cell_tower, size: 24, color: AppTheme.primaryColor);
              },
            ),
            const SizedBox(width: 10),
            const Text('Dashboard'),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.9,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return _buildCategoryCard(
              title: category['title'] as String,
              icon: category['icon'] as IconData,
              onTap: () {
                // TODO: Navegar a la pantalla de la categoría
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Seleccionaste: ${category['title']}')),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildCategoryCard({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: AppTheme.neumorphicDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: AppTheme.primaryColor,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
