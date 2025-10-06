int aguaAtrapada(List<int> bloques) {
  if (bloques.length < 3) {
    return 0;
  }
 
  int n = bloques.length;
  int aguaTotal = 0;
 
  List<int> maxIzquierda = List.filled(n, 0);
  List<int> maxDerecha = List.filled(n, 0);

  maxIzquierda[0] = bloques[0];
  for (int i = 1; i < n; i++) {
    maxIzquierda[i] = maxIzquierda[i - 1] > bloques[i]
        ? maxIzquierda[i - 1]
        : bloques[i];
  }
 
  maxDerecha[n - 1] = bloques[n - 1];
  for (int i = n - 2; i >= 0; i--) {
    maxDerecha[i] = maxDerecha[i + 1] > bloques[i]
        ? maxDerecha[i + 1]
        : bloques[i];
  }
  for (int i = 0; i < n; i++) {
    int nivelAgua = maxIzquierda[i] < maxDerecha[i]
        ? maxIzquierda[i]
        : maxDerecha[i];
   
    if (nivelAgua > bloques[i]) {
      aguaTotal += nivelAgua - bloques[i];
    }
  }
 
  return aguaTotal;
}

