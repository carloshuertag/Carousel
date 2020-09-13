import 'question.dart';

class Carousel{
  static final result = const ['Incorrecto', 'Correcto'];
  static List<Question> carouselQuesions = const [
    Question(1, 'Persona que tripula una Astronave o que está entrenada para este Trabajo', 'Astronauta'),
    Question(2, 'Especie de Talega o Saco de Tela y otro material que sirve para llevar o guardar algo', 'Bolsa'),
    Question(3, 'Aparato destinado a registrar imágenes animadas para el cine o la telivision', 'Camara'),
    Question(4, 'Obra literaria escrita para ser representada', 'Drama'),
    Question(5, 'Que se prolonga muchisimo o excesivamente', 'Eterno'),
    Question(6, 'Laboratorio y despacho del farmaceutico', 'Farmacia'),
  ];
  String gradeAnswer(int id, String answer) {
    return carouselQuesions.any((question)=>question.questionId == id && question.questionAnswer?.toLowerCase() == answer?.toLowerCase()) ? result[1] : result[0];
  }
  Question getQuestion(int id){
    return id < 6 ? carouselQuesions[id] : carouselQuesions[0];
  }
}