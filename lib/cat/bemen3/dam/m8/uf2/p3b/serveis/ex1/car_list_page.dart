import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'car_provider.dart';

class CarListPage extends StatelessWidget {
const CarListPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    final carProvider = Provider.of<CarProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Coches")),
      body: carProvider.isLoading
          ? const Center(child:CircularProgressIndicator())
          : ListView.builder(
              itemCount: carProvider.cars.length,
              itemBuilder: (context, index) {
                final car = carProvider.cars[index];
                return ListTile(
                  title: Text("${car.make} ${car.model}"),
                  subtitle: Text("Año: ${car.year} | Tipo: ${car.type}"),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => carProvider.fetchCars(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
