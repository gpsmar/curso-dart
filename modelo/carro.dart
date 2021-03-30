class Carro {
  final int velocidadeMax;
  // Sem getters e setters por enquanto
  int velocidadeAtual;

  int acelerar(int aumentar) {
    if (!estaNoLimite(velocidadeAtual)) {
      return this.velocidadeAtual += aumentar;
    } else {
      return this.velocidadeMax;
    }
  }

  int frear(int diminuir) {
    if ((this.velocidadeAtual - diminuir) < 0) {
      return 0;
    } else {
      return this.velocidadeAtual -= diminuir;
    }
  }

  bool estaNoLimite(int velocidade) {
    if (velocidade == this.velocidadeMax) {
      return true;
    } else {
      return false;
    }
  }

  Carro(this.velocidadeMax, this.velocidadeAtual);
}
