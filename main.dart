import 'dart:html';
import 'question.dart';
import 'carousel.dart';

void main() {
  Carousel carousel = Carousel();
  int id = 0;
  displayQuestion(carousel, id);
  querySelector('#next').onClick.listen((event) {
    id = int.tryParse(querySelector('#id').text);
    if(id == null)
      return;
    displayQuestion(carousel, id);
  });
  querySelector('#check').onClick.listen((event) {
    id = int.tryParse(querySelector('#id').text);
    String answer = (querySelector('#answer') as InputElement).value;
    id != null ? querySelector('#result').text = carousel.gradeAnswer(id, answer) : querySelector('#result').text = 'No válido';
  });
}
void displayQuestion(Carousel carousel, int id){
  Question question = carousel.getQuestion(id);
  querySelector('#id').text = '${question.questionId}';
  querySelector('#question').text = question.questionDefinition;
}