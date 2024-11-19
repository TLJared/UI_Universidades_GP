import 'package:get/get.dart';
import 'package:ui_universidades_gp/datosApp/models/universities_model.dart';

class ItemsUniController extends GetxController {
  var UniversitiesItems = <ItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
  }

  void fetchItems() {
    // Aquí podrías cargar datos desde una API o base de datos.
    UniversitiesItems.value = [
      ItemModel(
          ImageURL:
              'https://virtual.utpuebla.edu.mx/pluginfile.php/1/theme_academi/logo/1672678911/logoUTP.png',
          name: 'Universidad Tecnologica de Puebla',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          Precio: 2500,
          ingenierias: [
            "Ingeniería en desarrollo de software multiplataforma",
            "Ingeniería ambiental",
            "Ingeniería agropecuaria",
            "Ingeniería en mecatrónica"
          ],
          licenciaturas: [
            "Licenciatura en lenguas",
            "Licenciatura en Gastronomía",
            "Licenciatura en Negocios Internacionales"
          ],
          FechaPago: "Semestral",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          deportesCultares: [
            "Danza folclórica",
            "Danza contemporánea",
            "Teatro o actuación",
            "Canto coral",
            "Fotografía artística",
            "",
          ],
          ActividadesExtracurriculares: [
            "Club de lectura",
            "Club de debate",
            "Investigación científica",
            "Equipo de fútbol, básquetbol, vóleibol.",
            "Torneos de ajedrez.",
            "Artes marciales (taekwondo, karate).",
            "Atletismo y actividades al aire libre (senderismo, ciclismo).",
            "Hackathons o competencias de programación.",
          ],
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          contactos: ["No disponibles por ahora."]),
      ItemModel(
          ImageURL:
              'https://logos-world.net/wp-content/uploads/2022/06/BUAP-Symbol.png',
          name: 'BUAP',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          Precio: 3500,
          ingenierias: [
            "Ingeniería en desarrollo de software multiplataforma",
            "Ingeniería ambiental",
            "Ingeniería agropecuaria",
            "Ingeniería en mecatrónica"
          ],
          licenciaturas: [
            "Licenciatura en lenguas",
            "Licenciatura en Gastronomía",
            "Licenciatura en Negocios Internacionales"
          ],
          FechaPago: "Semestral",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          deportesCultares: [
            "Danza folclórica",
            "Danza contemporánea",
            "Teatro o actuación",
            "Canto coral",
            "Fotografía artística",
            "",
            "",
            "",
            "",
            "",
            "",
          ],
          ActividadesExtracurriculares: [
            "Club de lectura",
            "Club de debate",
            "Investigación científica",
            "Equipo de fútbol, básquetbol, vóleibol.",
            "Torneos de ajedrez.",
            "Artes marciales (taekwondo, karate).",
            "Atletismo y actividades al aire libre (senderismo, ciclismo).",
            "Hackathons o competencias de programación.",
          ],
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          contactos: ["No disponibles por ahora."]),
      ItemModel(
          //assets/upp.png
          ImageURL:
              'https://th.bing.com/th/id/R.8aa1e5a8712571bd2f07048f12f31f04?rik=KCqOVSoF4NEwhg&riu=http%3a%2f%2fwww.uppuebla.edu.mx%2fwp-content%2fuploads%2f2022%2f08%2fLOGO-UPP-HD-1001x1024.png&ehk=5I22deQ3vA8P7Zg%2fHkVThb80W1Par%2bohSSzNYZbZhms%3d&risl=&pid=ImgRaw&r=0',
          name: 'Instituto Politecnico de Puebla',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          Precio: 4000,
          ingenierias: [
            "Ingeniería en desarrollo de software multiplataforma",
            "Ingeniería ambiental",
            "Ingeniería agropecuaria",
            "Ingeniería en mecatrónica"
          ],
          licenciaturas: [
            "Licenciatura en lenguas",
            "Licenciatura en Gastronomía",
            "Licenciatura en Negocios Internacionales"
          ],
          FechaPago: "Semestral",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          deportesCultares: [
            "Danza folclórica",
            "Danza contemporánea",
            "Teatro o actuación",
            "Canto coral",
            "Fotografía artística",
            "",
            "",
          ],
          ActividadesExtracurriculares: [
            "Club de lectura",
            "Club de debate",
            "Investigación científica",
            "Equipo de fútbol, básquetbol, vóleibol.",
            "Torneos de ajedrez.",
            "Artes marciales (taekwondo, karate).",
            "Atletismo y actividades al aire libre (senderismo, ciclismo).",
            "Hackathons o competencias de programación.",
          ],
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          contactos: ["No disponibles por ahora."]),
      ItemModel(
          ImageURL:
              'https://s3.amazonaws.com/s3.timetoast.com/public/uploads/photos/12211896/itp.png',
          name: 'Instituto Tecnologico de Puebla',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          Precio: 3200,
          ingenierias: [
            "Ingeniería en desarrollo de software multiplataforma",
            "Ingeniería ambiental",
            "Ingeniería agropecuaria",
            "Ingeniería en mecatrónica"
          ],
          licenciaturas: [
            "Licenciatura en lenguas",
            "Licenciatura en Gastronomía",
            "Licenciatura en Negocios Internacionales"
          ],
          FechaPago: "Semestral",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          deportesCultares: [
            "Danza folclórica",
            "Danza contemporánea",
            "Teatro o actuación",
            "Canto coral",
            "Fotografía artística",
            "",
            "",
            "",
            "",
            "",
            "",
          ],
          ActividadesExtracurriculares: [
            "Club de lectura",
            "Club de debate",
            "Investigación científica",
            "Equipo de fútbol, básquetbol, vóleibol.",
            "Torneos de ajedrez.",
            "Artes marciales (taekwondo, karate).",
            "Atletismo y actividades al aire libre (senderismo, ciclismo).",
            "Hackathons o competencias de programación.",
          ],
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          contactos: ["No disponibles por ahora."]),
      ItemModel(
          ImageURL: 'https://via.placeholder.com/150',
          name: 'Item 5',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          Precio: 2500,
          ingenierias: [
            "Ingeniería en desarrollo de software multiplataforma",
            "Ingeniería ambiental",
            "Ingeniería agropecuaria",
            "Ingeniería en mecatrónica"
          ],
          licenciaturas: [
            "Licenciatura en lenguas",
            "Licenciatura en Gastronomía",
            "Licenciatura en Negocios Internacionales"
          ],
          FechaPago: "Semestral",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          deportesCultares: [
            "Danza folclórica",
            "Danza contemporánea",
            "Teatro o actuación",
            "Canto coral",
            "Fotografía artística",
            "",
            "",
            "",
            "",
            "",
            "",
          ],
          ActividadesExtracurriculares: [
            "Club de lectura",
            "Club de debate",
            "Investigación científica",
            "Equipo de fútbol, básquetbol, vóleibol.",
            "Torneos de ajedrez.",
            "Artes marciales (taekwondo, karate).",
            "Atletismo y actividades al aire libre (senderismo, ciclismo).",
            "Hackathons o competencias de programación.",
          ],
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          contactos: ["No disponibles por ahora."]),
      ItemModel(
          ImageURL: 'https://via.placeholder.com/150',
          name: 'Item 6',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          Precio: 2500,
          ingenierias: [
            "Ingeniería en desarrollo de software multiplataforma",
            "Ingeniería ambiental",
            "Ingeniería agropecuaria",
            "Ingeniería en mecatrónica"
          ],
          licenciaturas: [
            "Licenciatura en lenguas",
            "Licenciatura en Gastronomía",
            "Licenciatura en Negocios Internacionales"
          ],
          FechaPago: "Semestral",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          deportesCultares: [
            "Danza folclórica",
            "Danza contemporánea",
            "Teatro o actuación",
            "Canto coral",
            "Fotografía artística",
            "",
            "",
            "",
            "",
            "",
            "",
          ],
          ActividadesExtracurriculares: [
            "Club de lectura",
            "Club de debate",
            "Investigación científica",
            "Equipo de fútbol, básquetbol, vóleibol.",
            "Torneos de ajedrez.",
            "Artes marciales (taekwondo, karate).",
            "Atletismo y actividades al aire libre (senderismo, ciclismo).",
            "Hackathons o competencias de programación.",
          ],
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          contactos: ["No disponibles por ahora."]),
    ].obs;
  }
}
