import 'package:flutter/material.dart';

class ContainerEl extends StatelessWidget {
  final IconData icon;
  const ContainerEl({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: 350,
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade400,
          borderRadius: BorderRadius.circular(12),
        ),

        child: Center(child: Icon(icon, size: 80)),
      ),
    );
  }
}
