int aguaAtrapada(List<int> bloques) {
  if (bloques.length < 3) {
    return 0;
  }
 
  int n = bloques.length;
  int aguaTotal = 0;
 
  List<int> maxIzquierda = List.filled(n, 0);
  List<int> maxDerecha = List.filled(n, 0);
}
