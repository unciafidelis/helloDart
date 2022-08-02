import 'mixins.dart';
import 'dart:io';

void main() async {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };
  var x = mixero();
  var astronauts = x.astronauts;
  if (astronauts == 0) {
    throw StateError('No astronauts.');
  }

  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Error chido: $e');
  } finally {
    flybyObjects.clear();
  }
}
