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
          descrpcionPrecio:
              "Los costos de estudiar en una universidad son un factor clave que los estudiantes y sus familias deben considerar al planificar la educación superior. Estos gastos incluyen una variedad de rubros como la matrícula, las cuotas semestrales, los materiales de estudio, y otros aspectos asociados como el alojamiento, la alimentación y el transporte. Aunque varían según el tipo de institución (pública o privada), la ubicación geográfica y el programa académico, entenderlos a profundidad permite tomar decisiones informadas y preparar un presupuesto adecuado. Conocer estos costos no solo ayuda a evaluar la viabilidad económica, sino también a buscar opciones de financiamiento, becas o apoyos que faciliten el acceso a la educación superior.",
          Precio: [
            "Matrícula: Inscripción anual: 1,000 - 5,000 MXN.",
            "Matrícula: Cuota por semestre: 500 - 2,000 MXN.",
            "Materiales y libros: Por semestre: 1,000 - 4,000 MXN",
          ],
          descriptionInge:
              "Elegir una carrera universitaria es una de las decisiones más importantes en la vida académica de un estudiante, ya que define el camino hacia su desarrollo profesional y personal. Las universidades ofrecen una amplia variedad de programas que abarcan distintas áreas del conocimiento, como ciencias exactas, humanidades, artes, tecnología, salud y negocios, entre otras. Cada carrera está diseñada para formar a los estudiantes con habilidades específicas y conocimientos profundos en un campo particular, permitiéndoles afrontar los retos del mercado laboral actual. Esta diversidad de opciones brinda a los jóvenes la oportunidad de explorar sus intereses, talentos y aspiraciones, abriendo las puertas hacia un futuro lleno de posibilidades y crecimiento.",
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
          descripBecas:
              "Las becas universitarias son una herramienta clave para apoyar a los estudiantes que desean acceder a la educación superior, pero que enfrentan limitaciones económicas o buscan reconocimiento por su desempeño académico, artístico, deportivo o social. Estas ayudas, ofrecidas por universidades, gobiernos, organizaciones privadas y fundaciones, están diseñadas para cubrir parcial o totalmente los costos de matrícula, alojamiento, materiales de estudio u otros gastos relacionados con la vida estudiantil. Para los postulantes a la universidad, las becas representan no solo una oportunidad para aliviar la carga económica, sino también un incentivo para destacar en sus áreas de interés y comprometerse con su formación profesional. Conocer los diferentes tipos de becas disponibles y los requisitos para aplicar puede marcar la diferencia en el acceso y éxito en la educación superior.",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          descripActiCulturales:
              "Las becas universitarias son una herramienta clave para apoyar a los estudiantes que desean acceder a la educación superior, pero que enfrentan limitaciones económicas o buscan reconocimiento por su desempeño académico, artístico, deportivo o social. Estas ayudas, ofrecidas por universidades, gobiernos, organizaciones privadas y fundaciones, están diseñadas para cubrir parcial o totalmente los costos de matrícula, alojamiento, materiales de estudio u otros gastos relacionados con la vida estudiantil. Para los postulantes a la universidad, las becas representan no solo una oportunidad para aliviar la carga económica, sino también un incentivo para destacar en sus áreas de interés y comprometerse con su formación profesional. Conocer los diferentes tipos de becas disponibles y los requisitos para aplicar puede marcar la diferencia en el acceso y éxito en la educación superior.",
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
          descripDepartHelpStudents:
              "Las universidades cuentan con diversos departamentos diseñados para apoyar a los estudiantes en distintas etapas de su formación académica y personal, asegurando una experiencia integral y enriquecedora. Entre ellos, destacan áreas como **Orientación vocacional y profesional**, que ayuda a los estudiantes a identificar sus intereses y habilidades para elegir la carrera que mejor se adapte a sus objetivos; **Consejería psicológica y emocional**, que ofrece apoyo en temas de bienestar mental y emocional, promoviendo un ambiente saludable para el aprendizaje. Además, las **oficinas de servicios internacionales** facilitan oportunidades de intercambio cultural y académico, brindando orientación a estudiantes extranjeros y locales interesados en ampliar sus horizontes. Por otro lado, la **bolsa de trabajo y orientación para prácticas profesionales** conecta a los alumnos con el mundo laboral, ofreciendo asesoría y oportunidades para adquirir experiencia práctica. Estos departamentos son esenciales para acompañar a los estudiantes en su desarrollo integral y prepararlos para enfrentar los desafíos del futuro.",
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          descripContactos:
              "El apartado de contactos de la universidad está diseñado para proporcionar a los estudiantes, aspirantes y público en general la información necesaria para resolver dudas, obtener orientación o iniciar trámites relacionados con la institución. A través de este espacio, las personas pueden acceder a números telefónicos, correos electrónicos y direcciones de las oficinas principales, como admisiones, servicios escolares, orientación vocacional, y más. Este canal de comunicación facilita el acceso directo a los departamentos correspondientes, garantizando una atención personalizada y oportuna para quienes buscan información adicional sobre programas académicos, becas, actividades extracurriculares o cualquier aspecto relacionado con la vida universitaria.",
          contactos: ["No disponibles por ahora."]),
      ItemModel(
          ImageURL:
              'https://logos-world.net/wp-content/uploads/2022/06/BUAP-Symbol.png',
          name: 'BUAP',
          description:
              'La Benemérita Universidad Autónoma de Puebla (BUAP) es una institución pública de educación superior con una rica historia que se remonta a 1587, lo que la convierte en una de las universidades más antiguas y prestigiosas de México. Ubicada en el estado de Puebla, la BUAP es reconocida por su excelencia académica, diversidad de programas educativos y compromiso con la formación integral de sus estudiantes. Con una oferta que abarca licenciaturas, posgrados, carreras técnicas y cursos de idiomas, la universidad también destaca por sus instalaciones modernas, como la Ciudad Universitaria y el Complejo Cultural Universitario. Además, su enfoque en la investigación, la innovación y el impacto social la posiciona como un referente educativo tanto a nivel nacional como internacional.',
          descrpcionPrecio:
              "Los costos de estudiar en una universidad son un factor clave que los estudiantes y sus familias deben considerar al planificar la educación superior. Estos gastos incluyen una variedad de rubros como la matrícula, las cuotas semestrales, los materiales de estudio, y otros aspectos asociados como el alojamiento, la alimentación y el transporte. Aunque varían según el tipo de institución (pública o privada), la ubicación geográfica y el programa académico, entenderlos a profundidad permite tomar decisiones informadas y preparar un presupuesto adecuado. Conocer estos costos no solo ayuda a evaluar la viabilidad económica, sino también a buscar opciones de financiamiento, becas o apoyos que faciliten el acceso a la educación superior.",
          Precio: [
            "Matrícula: Inscripción anual: 1,000 - 5,000 MXN.",
            "Matrícula: Cuota por semestre: 500 - 2,000 MXN.",
            "Materiales y libros: Por semestre: 1,000 - 4,000 MXN",
          ],
          descriptionInge:
              "Elegir una carrera universitaria es una de las decisiones más importantes en la vida académica de un estudiante, ya que define el camino hacia su desarrollo profesional y personal. Las universidades ofrecen una amplia variedad de programas que abarcan distintas áreas del conocimiento, como ciencias exactas, humanidades, artes, tecnología, salud y negocios, entre otras. Cada carrera está diseñada para formar a los estudiantes con habilidades específicas y conocimientos profundos en un campo particular, permitiéndoles afrontar los retos del mercado laboral actual. Esta diversidad de opciones brinda a los jóvenes la oportunidad de explorar sus intereses, talentos y aspiraciones, abriendo las puertas hacia un futuro lleno de posibilidades y crecimiento.",
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
          descripBecas:
              "Las becas universitarias son una herramienta clave para apoyar a los estudiantes que desean acceder a la educación superior, pero que enfrentan limitaciones económicas o buscan reconocimiento por su desempeño académico, artístico, deportivo o social. Estas ayudas, ofrecidas por universidades, gobiernos, organizaciones privadas y fundaciones, están diseñadas para cubrir parcial o totalmente los costos de matrícula, alojamiento, materiales de estudio u otros gastos relacionados con la vida estudiantil. Para los postulantes a la universidad, las becas representan no solo una oportunidad para aliviar la carga económica, sino también un incentivo para destacar en sus áreas de interés y comprometerse con su formación profesional. Conocer los diferentes tipos de becas disponibles y los requisitos para aplicar puede marcar la diferencia en el acceso y éxito en la educación superior.",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          descripActiCulturales:
              "Las becas universitarias son una herramienta clave para apoyar a los estudiantes que desean acceder a la educación superior, pero que enfrentan limitaciones económicas o buscan reconocimiento por su desempeño académico, artístico, deportivo o social. Estas ayudas, ofrecidas por universidades, gobiernos, organizaciones privadas y fundaciones, están diseñadas para cubrir parcial o totalmente los costos de matrícula, alojamiento, materiales de estudio u otros gastos relacionados con la vida estudiantil. Para los postulantes a la universidad, las becas representan no solo una oportunidad para aliviar la carga económica, sino también un incentivo para destacar en sus áreas de interés y comprometerse con su formación profesional. Conocer los diferentes tipos de becas disponibles y los requisitos para aplicar puede marcar la diferencia en el acceso y éxito en la educación superior.",
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
          descripDepartHelpStudents:
              "Las universidades cuentan con diversos departamentos diseñados para apoyar a los estudiantes en distintas etapas de su formación académica y personal, asegurando una experiencia integral y enriquecedora. Entre ellos, destacan áreas como **Orientación vocacional y profesional**, que ayuda a los estudiantes a identificar sus intereses y habilidades para elegir la carrera que mejor se adapte a sus objetivos; **Consejería psicológica y emocional**, que ofrece apoyo en temas de bienestar mental y emocional, promoviendo un ambiente saludable para el aprendizaje. Además, las **oficinas de servicios internacionales** facilitan oportunidades de intercambio cultural y académico, brindando orientación a estudiantes extranjeros y locales interesados en ampliar sus horizontes. Por otro lado, la **bolsa de trabajo y orientación para prácticas profesionales** conecta a los alumnos con el mundo laboral, ofreciendo asesoría y oportunidades para adquirir experiencia práctica. Estos departamentos son esenciales para acompañar a los estudiantes en su desarrollo integral y prepararlos para enfrentar los desafíos del futuro.",
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          descripContactos:
              "El apartado de contactos de la universidad está diseñado para proporcionar a los estudiantes, aspirantes y público en general la información necesaria para resolver dudas, obtener orientación o iniciar trámites relacionados con la institución. A través de este espacio, las personas pueden acceder a números telefónicos, correos electrónicos y direcciones de las oficinas principales, como admisiones, servicios escolares, orientación vocacional, y más. Este canal de comunicación facilita el acceso directo a los departamentos correspondientes, garantizando una atención personalizada y oportuna para quienes buscan información adicional sobre programas académicos, becas, actividades extracurriculares o cualquier aspecto relacionado con la vida universitaria.",
          contactos: ["No disponibles por ahora."]),
      ItemModel(
          //assets/upp.png
          ImageURL:
              'https://th.bing.com/th/id/R.8aa1e5a8712571bd2f07048f12f31f04?rik=KCqOVSoF4NEwhg&riu=http%3a%2f%2fwww.uppuebla.edu.mx%2fwp-content%2fuploads%2f2022%2f08%2fLOGO-UPP-HD-1001x1024.png&ehk=5I22deQ3vA8P7Zg%2fHkVThb80W1Par%2bohSSzNYZbZhms%3d&risl=&pid=ImgRaw&r=0',
          name: 'Instituto Politecnico de Puebla',
          description:
              'La Universidad Politécnica de Puebla (UPP) es una institución pública de educación superior ubicada en Puebla, México, reconocida por su enfoque en la enseñanza tecnológica y la innovación. Desde su creación en 2004, la UPP ha destacado por ofrecer programas académicos en áreas estratégicas como ingeniería, tecnologías de la información y ciencias aplicadas, alineados con las demandas del sector productivo. Con un modelo educativo basado en competencias, modernas instalaciones y vinculación empresarial, la UPP prepara a sus estudiantes para ser líderes en el ámbito profesional, promoviendo el desarrollo tecnológico y económico tanto a nivel regional como nacional.',
          descrpcionPrecio:
              "Los costos de estudiar en una universidad son un factor clave que los estudiantes y sus familias deben considerar al planificar la educación superior. Estos gastos incluyen una variedad de rubros como la matrícula, las cuotas semestrales, los materiales de estudio, y otros aspectos asociados como el alojamiento, la alimentación y el transporte. Aunque varían según el tipo de institución (pública o privada), la ubicación geográfica y el programa académico, entenderlos a profundidad permite tomar decisiones informadas y preparar un presupuesto adecuado. Conocer estos costos no solo ayuda a evaluar la viabilidad económica, sino también a buscar opciones de financiamiento, becas o apoyos que faciliten el acceso a la educación superior.",
          Precio: [
            "Matrícula: Inscripción anual: 1,000 - 5,000 MXN.",
            "Matrícula: Cuota por semestre: 500 - 2,000 MXN.",
            "Materiales y libros: Por semestre: 1,000 - 4,000 MXN",
          ],
          descriptionInge:
              "Elegir una carrera universitaria es una de las decisiones más importantes en la vida académica de un estudiante, ya que define el camino hacia su desarrollo profesional y personal. Las universidades ofrecen una amplia variedad de programas que abarcan distintas áreas del conocimiento, como ciencias exactas, humanidades, artes, tecnología, salud y negocios, entre otras. Cada carrera está diseñada para formar a los estudiantes con habilidades específicas y conocimientos profundos en un campo particular, permitiéndoles afrontar los retos del mercado laboral actual. Esta diversidad de opciones brinda a los jóvenes la oportunidad de explorar sus intereses, talentos y aspiraciones, abriendo las puertas hacia un futuro lleno de posibilidades y crecimiento.",
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
          descripBecas:
              "Las becas universitarias son una herramienta clave para apoyar a los estudiantes que desean acceder a la educación superior, pero que enfrentan limitaciones económicas o buscan reconocimiento por su desempeño académico, artístico, deportivo o social. Estas ayudas, ofrecidas por universidades, gobiernos, organizaciones privadas y fundaciones, están diseñadas para cubrir parcial o totalmente los costos de matrícula, alojamiento, materiales de estudio u otros gastos relacionados con la vida estudiantil. Para los postulantes a la universidad, las becas representan no solo una oportunidad para aliviar la carga económica, sino también un incentivo para destacar en sus áreas de interés y comprometerse con su formación profesional. Conocer los diferentes tipos de becas disponibles y los requisitos para aplicar puede marcar la diferencia en el acceso y éxito en la educación superior.",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          descripActiCulturales:
              "Las becas universitarias son una herramienta clave para apoyar a los estudiantes que desean acceder a la educación superior, pero que enfrentan limitaciones económicas o buscan reconocimiento por su desempeño académico, artístico, deportivo o social. Estas ayudas, ofrecidas por universidades, gobiernos, organizaciones privadas y fundaciones, están diseñadas para cubrir parcial o totalmente los costos de matrícula, alojamiento, materiales de estudio u otros gastos relacionados con la vida estudiantil. Para los postulantes a la universidad, las becas representan no solo una oportunidad para aliviar la carga económica, sino también un incentivo para destacar en sus áreas de interés y comprometerse con su formación profesional. Conocer los diferentes tipos de becas disponibles y los requisitos para aplicar puede marcar la diferencia en el acceso y éxito en la educación superior.",
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
          descripDepartHelpStudents:
              "Las universidades cuentan con diversos departamentos diseñados para apoyar a los estudiantes en distintas etapas de su formación académica y personal, asegurando una experiencia integral y enriquecedora. Entre ellos, destacan áreas como **Orientación vocacional y profesional**, que ayuda a los estudiantes a identificar sus intereses y habilidades para elegir la carrera que mejor se adapte a sus objetivos; **Consejería psicológica y emocional**, que ofrece apoyo en temas de bienestar mental y emocional, promoviendo un ambiente saludable para el aprendizaje. Además, las **oficinas de servicios internacionales** facilitan oportunidades de intercambio cultural y académico, brindando orientación a estudiantes extranjeros y locales interesados en ampliar sus horizontes. Por otro lado, la **bolsa de trabajo y orientación para prácticas profesionales** conecta a los alumnos con el mundo laboral, ofreciendo asesoría y oportunidades para adquirir experiencia práctica. Estos departamentos son esenciales para acompañar a los estudiantes en su desarrollo integral y prepararlos para enfrentar los desafíos del futuro.",
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          descripContactos:
              "El apartado de contactos de la universidad está diseñado para proporcionar a los estudiantes, aspirantes y público en general la información necesaria para resolver dudas, obtener orientación o iniciar trámites relacionados con la institución. A través de este espacio, las personas pueden acceder a números telefónicos, correos electrónicos y direcciones de las oficinas principales, como admisiones, servicios escolares, orientación vocacional, y más. Este canal de comunicación facilita el acceso directo a los departamentos correspondientes, garantizando una atención personalizada y oportuna para quienes buscan información adicional sobre programas académicos, becas, actividades extracurriculares o cualquier aspecto relacionado con la vida universitaria.",
          contactos: ["No disponibles por ahora."]),
      ItemModel(
          ImageURL:
              'https://s3.amazonaws.com/s3.timetoast.com/public/uploads/photos/12211896/itp.png',
          name: 'Instituto Tecnologico de Puebla',
          description:
              'El Instituto Tecnológico de Puebla (ITP) es una destacada institución de educación superior pública ubicada en Puebla, México, que forma parte del Tecnológico Nacional de México. Desde su fundación en 1972, el ITP se ha enfocado en ofrecer programas académicos de excelencia en ingeniería, tecnología y ciencias aplicadas, fomentando la innovación y el desarrollo profesional. Con modernas instalaciones, laboratorios especializados y una sólida tradición educativa, el ITP prepara a sus estudiantes para contribuir al progreso industrial y tecnológico del país, destacándose como un pilar en la formación de talento altamente calificado.',
          descrpcionPrecio:
              "Los costos de estudiar en una universidad son un factor clave que los estudiantes y sus familias deben considerar al planificar la educación superior. Estos gastos incluyen una variedad de rubros como la matrícula, las cuotas semestrales, los materiales de estudio, y otros aspectos asociados como el alojamiento, la alimentación y el transporte. Aunque varían según el tipo de institución (pública o privada), la ubicación geográfica y el programa académico, entenderlos a profundidad permite tomar decisiones informadas y preparar un presupuesto adecuado. Conocer estos costos no solo ayuda a evaluar la viabilidad económica, sino también a buscar opciones de financiamiento, becas o apoyos que faciliten el acceso a la educación superior.",
          Precio: [
            "Matrícula: Inscripción anual: 1,000 - 5,000 MXN.",
            "Matrícula: Cuota por semestre: 500 - 2,000 MXN.",
            "Materiales y libros: Por semestre: 1,000 - 4,000 MXN",
          ],
          descriptionInge:
              "Elegir una carrera universitaria es una de las decisiones más importantes en la vida académica de un estudiante, ya que define el camino hacia su desarrollo profesional y personal. Las universidades ofrecen una amplia variedad de programas que abarcan distintas áreas del conocimiento, como ciencias exactas, humanidades, artes, tecnología, salud y negocios, entre otras. Cada carrera está diseñada para formar a los estudiantes con habilidades específicas y conocimientos profundos en un campo particular, permitiéndoles afrontar los retos del mercado laboral actual. Esta diversidad de opciones brinda a los jóvenes la oportunidad de explorar sus intereses, talentos y aspiraciones, abriendo las puertas hacia un futuro lleno de posibilidades y crecimiento.",
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
          descripBecas:
              "Las becas universitarias son una herramienta clave para apoyar a los estudiantes que desean acceder a la educación superior, pero que enfrentan limitaciones económicas o buscan reconocimiento por su desempeño académico, artístico, deportivo o social. Estas ayudas, ofrecidas por universidades, gobiernos, organizaciones privadas y fundaciones, están diseñadas para cubrir parcial o totalmente los costos de matrícula, alojamiento, materiales de estudio u otros gastos relacionados con la vida estudiantil. Para los postulantes a la universidad, las becas representan no solo una oportunidad para aliviar la carga económica, sino también un incentivo para destacar en sus áreas de interés y comprometerse con su formación profesional. Conocer los diferentes tipos de becas disponibles y los requisitos para aplicar puede marcar la diferencia en el acceso y éxito en la educación superior.",
          becas: [
            "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
            "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
            "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
            "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
            "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
            "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
          ],
          descripActiCulturales:
              "Las becas universitarias son una herramienta clave para apoyar a los estudiantes que desean acceder a la educación superior, pero que enfrentan limitaciones económicas o buscan reconocimiento por su desempeño académico, artístico, deportivo o social. Estas ayudas, ofrecidas por universidades, gobiernos, organizaciones privadas y fundaciones, están diseñadas para cubrir parcial o totalmente los costos de matrícula, alojamiento, materiales de estudio u otros gastos relacionados con la vida estudiantil. Para los postulantes a la universidad, las becas representan no solo una oportunidad para aliviar la carga económica, sino también un incentivo para destacar en sus áreas de interés y comprometerse con su formación profesional. Conocer los diferentes tipos de becas disponibles y los requisitos para aplicar puede marcar la diferencia en el acceso y éxito en la educación superior.",
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
          descripDepartHelpStudents:
              "Las universidades cuentan con diversos departamentos diseñados para apoyar a los estudiantes en distintas etapas de su formación académica y personal, asegurando una experiencia integral y enriquecedora. Entre ellos, destacan áreas como **Orientación vocacional y profesional**, que ayuda a los estudiantes a identificar sus intereses y habilidades para elegir la carrera que mejor se adapte a sus objetivos; **Consejería psicológica y emocional**, que ofrece apoyo en temas de bienestar mental y emocional, promoviendo un ambiente saludable para el aprendizaje. Además, las **oficinas de servicios internacionales** facilitan oportunidades de intercambio cultural y académico, brindando orientación a estudiantes extranjeros y locales interesados en ampliar sus horizontes. Por otro lado, la **bolsa de trabajo y orientación para prácticas profesionales** conecta a los alumnos con el mundo laboral, ofreciendo asesoría y oportunidades para adquirir experiencia práctica. Estos departamentos son esenciales para acompañar a los estudiantes en su desarrollo integral y prepararlos para enfrentar los desafíos del futuro.",
          areaApoyoEstudiantes: [
            "Orientación vocacional y profesional.",
            "Consejería psicológica y emocional.",
            "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
            "Bolsa de trabajo y orientación para prácticas profesionales.",
          ],
          descripContactos:
              "El apartado de contactos de la universidad está diseñado para proporcionar a los estudiantes, aspirantes y público en general la información necesaria para resolver dudas, obtener orientación o iniciar trámites relacionados con la institución. A través de este espacio, las personas pueden acceder a números telefónicos, correos electrónicos y direcciones de las oficinas principales, como admisiones, servicios escolares, orientación vocacional, y más. Este canal de comunicación facilita el acceso directo a los departamentos correspondientes, garantizando una atención personalizada y oportuna para quienes buscan información adicional sobre programas académicos, becas, actividades extracurriculares o cualquier aspecto relacionado con la vida universitaria.",
          contactos: ["No disponibles por ahora."]),
      // ItemModel(
      //     ImageURL: 'https://via.placeholder.com/150',
      //     name: 'Item 5',
      //     description:
      //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
      //         descrpcionPrecio: "Los costos de estudiar en una universidad son un factor clave que los estudiantes y sus familias deben considerar al planificar la educación superior. Estos gastos incluyen una variedad de rubros como la matrícula, las cuotas semestrales, los materiales de estudio, y otros aspectos asociados como el alojamiento, la alimentación y el transporte. Aunque varían según el tipo de institución (pública o privada), la ubicación geográfica y el programa académico, entenderlos a profundidad permite tomar decisiones informadas y preparar un presupuesto adecuado. Conocer estos costos no solo ayuda a evaluar la viabilidad económica, sino también a buscar opciones de financiamiento, becas o apoyos que faciliten el acceso a la educación superior.",
      //     Precio: 2500,
      //     ingenierias: [
      //       "Ingeniería en desarrollo de software multiplataforma",
      //       "Ingeniería ambiental",
      //       "Ingeniería agropecuaria",
      //       "Ingeniería en mecatrónica"
      //     ],
      //     licenciaturas: [
      //       "Licenciatura en lenguas",
      //       "Licenciatura en Gastronomía",
      //       "Licenciatura en Negocios Internacionales"
      //     ],
      //     FechaPago: "Semestral",
      //     becas: [
      //       "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
      //       "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
      //       "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
      //       "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
      //       "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
      //       "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
      //     ],
      //     deportesCultares: [
      //       "Danza folclórica",
      //       "Danza contemporánea",
      //       "Teatro o actuación",
      //       "Canto coral",
      //       "Fotografía artística",
      //       "",
      //       "",
      //       "",
      //       "",
      //       "",
      //       "",
      //     ],
      //     ActividadesExtracurriculares: [
      //       "Club de lectura",
      //       "Club de debate",
      //       "Investigación científica",
      //       "Equipo de fútbol, básquetbol, vóleibol.",
      //       "Torneos de ajedrez.",
      //       "Artes marciales (taekwondo, karate).",
      //       "Atletismo y actividades al aire libre (senderismo, ciclismo).",
      //       "Hackathons o competencias de programación.",
      //     ],
      //     areaApoyoEstudiantes: [
      //       "Orientación vocacional y profesional.",
      //       "Consejería psicológica y emocional.",
      //       "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
      //       "Bolsa de trabajo y orientación para prácticas profesionales.",
      //     ],
      //     contactos: ["No disponibles por ahora."]),
      // ItemModel(
      //     ImageURL: 'https://via.placeholder.com/150',
      //     name: 'Item 6',
      //     description:
      //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
      //     Precio: 2500,
      //     ingenierias: [
      //       "Ingeniería en desarrollo de software multiplataforma",
      //       "Ingeniería ambiental",
      //       "Ingeniería agropecuaria",
      //       "Ingeniería en mecatrónica"
      //     ],
      //     licenciaturas: [
      //       "Licenciatura en lenguas",
      //       "Licenciatura en Gastronomía",
      //       "Licenciatura en Negocios Internacionales"
      //     ],
      //     FechaPago: "Semestral",
      //     becas: [
      //       "BECA Por mérito académico: Otorgadas a estudiantes con un promedio destacado.",
      //       "BECA Por rendimiento en exámenes de admisión: Para quienes obtienen calificaciones sobresalientes en pruebas de ingreso. ",
      //       "BECA Por excelencia en áreas específicas: Enfocadas en materias como matemáticas, ciencias o artes.",
      //       "BECA DEPORTIVA Por representación deportiva: Para estudiantes que participan en equipos universitarios.",
      //       "BECA ECONOMICA Por necesidad económica: Destinadas a estudiantes con ingresos familiares limitados. ",
      //       "BECA ECONIMICA Para hijos de trabajadores: Ofrecidas por sindicatos, empresas o instituciones gubernamentales."
      //     ],
      //     deportesCultares: [
      //       "Danza folclórica",
      //       "Danza contemporánea",
      //       "Teatro o actuación",
      //       "Canto coral",
      //       "Fotografía artística",
      //       "",
      //       "",
      //       "",
      //       "",
      //       "",
      //       "",
      //     ],
      //     ActividadesExtracurriculares: [
      //       "Club de lectura",
      //       "Club de debate",
      //       "Investigación científica",
      //       "Equipo de fútbol, básquetbol, vóleibol.",
      //       "Torneos de ajedrez.",
      //       "Artes marciales (taekwondo, karate).",
      //       "Atletismo y actividades al aire libre (senderismo, ciclismo).",
      //       "Hackathons o competencias de programación.",
      //     ],
      //     areaApoyoEstudiantes: [
      //       "Orientación vocacional y profesional.",
      //       "Consejería psicológica y emocional.",
      //       "Oficinas de servicios internacionales (para intercambio o estudiantes extranjeros).",
      //       "Bolsa de trabajo y orientación para prácticas profesionales.",
      //     ],
      //     contactos: ["No disponibles por ahora."]),
    ].obs;
  }
}
