import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class UbicacionController extends GetxController {
  final _currentPosition = Rxn<LatLng>();
  final _isLoading = true.obs;
  final _errorMessage = ''.obs;
  final _universidadesCercanas = <LatLng>[].obs;

  LatLng? get currentPosition => _currentPosition.value;
  bool get isLoading => _isLoading.value;
  String get errorMessage => _errorMessage.value;
  List<LatLng> get universidadesCercanas => _universidadesCercanas.toList();

  @override
  void onInit() {
    super.onInit();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        _errorMessage.value =
            'Los servicios de ubicación están deshabilitados. Habilítalos desde la configuración del dispositivo.';
        _isLoading.value = false;
        await Geolocator.openLocationSettings();
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          _errorMessage.value = 'Permisos de ubicación denegados';
          _isLoading.value = false;
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        _errorMessage.value = 'Permisos de ubicación denegados permanentemente';
        _isLoading.value = false;
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      _currentPosition.value = LatLng(position.latitude, position.longitude);
      _isLoading.value = false;

      await _getUniversidadesCercanas();
    } catch (e) {
      _errorMessage.value = 'Error al obtener la ubicación: ${e.toString()}';
      _isLoading.value = false;
    }
  }

  Future<void> _getUniversidadesCercanas() async {
    if (_currentPosition.value == null) return;

    _universidadesCercanas.value = [
      LatLng(_currentPosition.value!.latitude + 0.01,
          _currentPosition.value!.longitude + 0.01),
      LatLng(_currentPosition.value!.latitude - 0.01,
          _currentPosition.value!.longitude - 0.01),
      // Agrega más ubicaciones según las universidades cercanas obtenidas de tu API
    ];
  }

  void reintentar() {
    _isLoading.value = true;
    _errorMessage.value = '';
    _getCurrentLocation();
  }
}

class UbicacionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UbicacionController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Ubicación Actual'),
      ),
      body: Obx(() {
        if (controller.isLoading) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 20),
                Text('Obteniendo ubicación...'),
              ],
            ),
          );
        }

        if (controller.errorMessage.isNotEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, color: Colors.red, size: 50),
                SizedBox(height: 20),
                Text(
                  controller.errorMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red),
                ),
                ElevatedButton(
                  onPressed: controller.reintentar,
                  child: Text('Reintentar'),
                )
              ],
            ),
          );
        }

        if (controller.currentPosition == null) {
          return Center(child: Text('No se pudo obtener la ubicación'));
        }

        return FlutterMap(
          options: MapOptions(
            initialCenter: controller.currentPosition!,
            initialZoom: 15.0,
          ),
          children: [
            TileLayer(
              urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: controller.currentPosition!,
                  width: 80.0,
                  height: 80.0,
                  child: Icon(
                    Icons.my_location,
                    color: Colors.blue,
                    size: 40.0,
                  ),
                ),
                ...controller.universidadesCercanas.map(
                  (posicion) => Marker(
                    point: posicion,
                    width: 80.0,
                    height: 80.0,
                    child: Icon(
                      Icons.school,
                      color: Colors.red,
                      size: 40.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:get/get.dart';
// import 'package:latlong2/latlong.dart';

// class UbicacionController extends GetxController {
//   var currentPosition = Rxn<LatLng>();
//   var isLoading = true.obs;
//   var errorMessage = ''.obs;
//   var universidadesCercanas = <LatLng>[].obs;

//   @override
//   void onInit() {
//     super.onInit();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     try {
//       bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//       if (!serviceEnabled) {
//         errorMessage.value =
//             'Los servicios de ubicación están deshabilitados. Habilítalos desde la configuración del dispositivo.';
//         isLoading.value = false;
//         await Geolocator.openLocationSettings();
//         return;
//       }

//       LocationPermission permission = await Geolocator.checkPermission();
//       if (permission == LocationPermission.denied) {
//         permission = await Geolocator.requestPermission();
//         if (permission == LocationPermission.denied) {
//           errorMessage.value = 'Permisos de ubicación denegados';
//           isLoading.value = false;
//           return;
//         }
//       }

//       if (permission == LocationPermission.deniedForever) {
//         errorMessage.value = 'Permisos de ubicación denegados permanentemente';
//         isLoading.value = false;
//         return;
//       }

//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//       );

//       currentPosition.value = LatLng(position.latitude, position.longitude);
//       isLoading.value = false;

//       // Cargar universidades cercanas
//       await _getUniversidadesCercanas();
//     } catch (e) {
//       errorMessage.value = 'Error al obtener la ubicación: ${e.toString()}';
//       isLoading.value = false;
//     }
//   }

//   Future<void> _getUniversidadesCercanas() async {
//     if (currentPosition.value == null) return;

//     universidadesCercanas.value = [
//       LatLng(currentPosition.value!.latitude + 0.01,
//           currentPosition.value!.longitude + 0.01),
//       LatLng(currentPosition.value!.latitude - 0.01,
//           currentPosition.value!.longitude - 0.01),
//       // Agrega más ubicaciones si es necesario
//     ];
//   }

//   void reintentar() {
//     isLoading.value = true;
//     errorMessage.value = '';
//     _getCurrentLocation();
//   }
// }

// class UbicacionView extends StatelessWidget {
//   const UbicacionView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(UbicacionController());

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Mi Ubicación Actual'),
//       ),
//       body: Obx(() {
//         if (controller.isLoading.value) {
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const [
//                 CircularProgressIndicator(),
//                 SizedBox(height: 20),
//                 Text('Obteniendo ubicación...'),
//               ],
//             ),
//           );
//         }

//         if (controller.errorMessage.isNotEmpty) {
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Icon(Icons.error_outline, color: Colors.red, size: 50),
//                 const SizedBox(height: 20),
//                 Text(
//                   controller.errorMessage.value,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Colors.red),
//                 ),
//                 ElevatedButton(
//                   onPressed: controller.reintentar,
//                   child: const Text('Reintentar'),
//                 ),
//               ],
//             ),
//           );
//         }

//         if (controller.currentPosition.value == null) {
//           return const Center(child: Text('No se pudo obtener la ubicación'));
//         }

//         return FlutterMap(
//           options: MapOptions(
//             initialCenter: controller.currentPosition.value!,
//             initialZoom: 15.0,
//           ),
//           children: [
//             TileLayer(
//               urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
//               userAgentPackageName: 'com.example.app',
//             ),
//             MarkerLayer(
//               markers: [
//                 Marker(
//                   point: controller.currentPosition.value!,
//                   width: 80.0,
//                   height: 80.0,
//                   child: const Icon(
//                     Icons.my_location,
//                     color: Colors.blue,
//                     size: 40.0,
//                   ),
//                 ),
//                 ...controller.universidadesCercanas.map(
//                   (posicion) => Marker(
//                     point: posicion,
//                     width: 80.0,
//                     height: 80.0,
//                     child: const Icon(
//                       Icons.school,
//                       color: Colors.red,
//                       size: 40.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         );
//       }),
//     );
//   }
// }
