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
              'La Universidad Tecnológica de Puebla (UTP) es una institución de educación superior pública ubicada en Puebla, México, reconocida por su modelo educativo basado en competencias y vinculación con el sector productivo. Fundada con el objetivo de formar profesionales altamente capacitados, la UTP ofrece programas académicos en áreas tecnológicas, de ingeniería y licenciaturas, destacando por su enfoque en la innovación y la empleabilidad. Con modernas instalaciones, programas de formación dual y una sólida relación con empresas, la universidad promueve el desarrollo integral de sus estudiantes, preparándolos para enfrentar los retos del mercado laboral actual.',
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
              'La Benemérita Universidad Autónoma de Puebla (BUAP) es una institución pública de educación superior con una rica historia que se remonta a 1587, lo que la convierte en una de las universidades más antiguas y prestigiosas de México. Ubicada en el estado de Puebla, la BUAP es reconocida por su excelencia académica, diversidad de programas educativos y compromiso con la formación integral de sus estudiantes. Con una oferta que abarca licenciaturas, posgrados, carreras técnicas y cursos de idiomas, la universidad también destaca por sus instalaciones modernas, como la Ciudad Universitaria y el Complejo Cultural Universitario. Además, su enfoque en la investigación, la innovación y el impacto social la posiciona como un referente educativo tanto a nivel nacional como internacional.',
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
              'La **Universidad Politécnica de Puebla (UPP) es una institución pública de educación superior ubicada en Puebla, México, reconocida por su enfoque en la enseñanza tecnológica y la innovación. Desde su creación en 2004, la UPP ha destacado por ofrecer programas académicos en áreas estratégicas como ingeniería, tecnologías de la información y ciencias aplicadas, alineados con las demandas del sector productivo. Con un modelo educativo basado en competencias, modernas instalaciones y vinculación empresarial, la UPP prepara a sus estudiantes para ser líderes en el ámbito profesional, promoviendo el desarrollo tecnológico y económico tanto a nivel regional como nacional.',
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
              'El Instituto Tecnológico de Puebla (ITP) es una destacada institución de educación superior pública ubicada en Puebla, México, que forma parte del Tecnológico Nacional de México. Desde su fundación en 1972, el ITP se ha enfocado en ofrecer programas académicos de excelencia en ingeniería, tecnología y ciencias aplicadas, fomentando la innovación y el desarrollo profesional. Con modernas instalaciones, laboratorios especializados y una sólida tradición educativa, el ITP prepara a sus estudiantes para contribuir al progreso industrial y tecnológico del país, destacándose como un pilar en la formación de talento altamente calificado.',
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
