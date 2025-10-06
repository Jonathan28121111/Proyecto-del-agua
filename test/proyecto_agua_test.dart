import 'package:proyecto_agua/proyecto_agua.dart';
import 'package:test/test.dart';

void main() {
  test('Ejemplo del enunciado [6, 0, 3, 4, 1, 3] = 7', () {
    expect(aguaAtrapada([6, 0, 3, 4, 1, 3]), equals(7));
  });
 
  test('Ejemplo [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1] = 6', () {
    expect(aguaAtrapada([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), equals(6));
  });
 
  test('Ejemplo [4, 2, 0, 3, 2, 5] = 9', () {
    expect(aguaAtrapada([4, 2, 0, 3, 2, 5]), equals(9));
  });
    test('Lista vacía = 0', () {
    expect(aguaAtrapada([]), equals(0));
  });
 
  test('Un bloque = 0', () {
    expect(aguaAtrapada([5]), equals(0));
  });
 
  test('Dos bloques = 0', () {
    expect(aguaAtrapada([5, 3]), equals(0));
  });

  test('Descendente = 0', () {
    expect(aguaAtrapada([5, 4, 3, 2, 1]), equals(0));
  });
 
  test('Ascendente = 0', () {
    expect(aguaAtrapada([1, 2, 3, 4, 5]), equals(0));
  });
 
  test('Todos iguales = 0', () {
    expect(aguaAtrapada([3, 3, 3, 3]), equals(0));
  });
 
  test('Valle simple [3, 0, 3] = 3', () {
    expect(aguaAtrapada([3, 0, 3]), equals(3));
  });
}
 

