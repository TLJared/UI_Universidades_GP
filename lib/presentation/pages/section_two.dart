import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

/// Modelo que contiene listas de URLs y descripciones
class ImageModel {
  final List<String> imageUrls;
  final List<String> descriptions;

  ImageModel({required this.imageUrls, required this.descriptions});
}

class CarouselController extends GetxController {
  final images = <ImageModel>[
    ImageModel(
      // utp
      imageUrls: [
        'https://th.bing.com/th/id/OIP.51oPqZPXsEuNBukFh3BqUAHaE8?rs=1&pid=ImgDetMain',
        'https://cdn.milenio.com/uploads/media/2014/05/04/la-institucion-amplia-la-perspectiva.jpeg',
        'https://th.bing.com/th/id/R.04a3b7736cebf84cf91f9202034a6593?rik=ntthJOY3yO6iEA&riu=http%3a%2f%2ftutorias.utpuebla.edu.mx%2fjquery.sldr-master%2fimg%2fslide12.jpg&ehk=o47pu7oZWw0Ow03WBA0XdwpWETnQWnLS01k4vW6yGog%3d&risl=&pid=ImgRaw&r=0',
      ],
      descriptions: [
        'Logo de Universidad',
        'Area de Gastronomia',
        'Entrada Principal',
      ],
    ),
    ImageModel(
      // buap
      imageUrls: [
        'https://www.elsoldepuebla.com.mx/local/oyjtv6-benemerita-universidad-autonoma-de-puebla-buap/ALTERNATES/LANDSCAPE_1140/Benem%C3%A9rita%20Universidad%20Aut%C3%B3noma%20de%20Puebla%20(BUAP)',
        'https://www.fotografiandomexico.com/images/noticias/2021/nacionales/la-buap-elegira-hoy-a-su-primera-rectora-en-votacian-virtual.jpg',
        'https://www.eluniversalpuebla.com.mx/sites/default/files/2021/06/16/a_torre_servicios.jpg',
        'https://th.bing.com/th/id/OIP.ssaxRH0nCY7MrgJxNeebwAHaE8?rs=1&pid=ImgDetMain',
        'https://autoserviciobuap.mx/wp-content/uploads/biblioteca-central-universitaria-buap-2048x1365.jpg',
      ],
      descriptions: [
        'Logo Buap',
        'Arena Buap',
        'Departamento de Rectoria',
        'Facultad de Administracion',
        'Biblioteca Central',
      ],
    ),
    ImageModel(
      // upp
      imageUrls: [
        'https://fastly.4sqi.net/img/general/600x600/91368338__w6JPHkzoRToxYBEbXFFsC0Sbw4k4v029ZWFdso2RnU.jpg',
        'https://lh5.googleusercontent.com/p/AF1QipMSA0y-QvOmacvAfcW6xg89pJke4b9GPL2OUkn9=w1080-k-no',
        'https://th.bing.com/th/id/R.ed12d0df102ec5c4d2852e804d1f13a3?rik=zhAj9Dntj7Gq1Q&riu=http%3a%2f%2fserverse.uppuebla.edu.mx%3a8069%2fweb%2fimage%2f405967%2fupp1.jpg&ehk=aOPXztFbcs8i8fyHnnKmTDeCjk4ojdQsv865AKp4c2Q%3d&risl=&pid=ImgRaw&r=0',
        'https://th.bing.com/th/id/R.23004960595c5642a7ba10ab23de0ff0?rik=XlZAtQ1sOw1YRw&riu=http%3a%2f%2fserverescolares.uppuebla.edu.mx%3a8069%2fweb%2fimage%2f405968%2fupp2.jpg&ehk=1Wa%2fHHE8pkYPi51bgmPXjKGmM4gqVJK7rLVeWuESWnM%3d&risl=&pid=ImgRaw&r=0',
      ],
      descriptions: [
        'Logo',
        'Entrada',
        'Area de atencion',
        'Biblioteca',
      ],
    ),
  ].obs;

  final currentImageIndex = 0.obs;
  final currentModelIndex = 0.obs;

  void updateIndexes(int modelIndex, int imageIndex) {
    currentModelIndex.value = modelIndex;
    currentImageIndex.value = imageIndex;
  }
}

class SectionTwo extends StatelessWidget {
  SectionTwo({super.key});
  final CarouselController controller = Get.put(CarouselController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Zonas de Universidades",
            style: TextStyle(
              fontSize: 15,
            )),
        automaticallyImplyLeading: false,
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              flex: 3,
              child: CarouselSlider.builder(
                itemCount: controller.images[controller.currentModelIndex.value]
                    .imageUrls.length,
                itemBuilder: (context, imageIndex, realIndex) {
                  final imageUrl = controller
                      .images[controller.currentModelIndex.value]
                      .imageUrls[imageIndex];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    controller.updateIndexes(
                      controller.currentModelIndex.value,
                      index,
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  controller.images[controller.currentModelIndex.value]
                      .descriptions[controller.currentImageIndex.value],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.images.length,
                itemBuilder: (context, modelIndex) {
                  return GestureDetector(
                    onTap: () {
                      controller.updateIndexes(modelIndex, 0);
                    },
                    child: Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:
                              controller.currentModelIndex.value == modelIndex
                                  ? Colors.blue
                                  : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text(
                          'Universidad ${modelIndex + 1}',
                          style: TextStyle(
                            color:
                                controller.currentModelIndex.value == modelIndex
                                    ? Color.fromARGB(255, 38, 0, 255)
                                    : Color.fromARGB(255, 20, 45, 235),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
