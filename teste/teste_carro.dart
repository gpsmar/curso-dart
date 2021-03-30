import '../modelo/carro.dart';

main() {
  var ferrari = Carro(400, 0);

  while (ferrari.velocidadeAtual < ferrari.velocidadeMax) {
    ferrari.acelerar(5);
    print('Velocidade atual é de ${ferrari.velocidadeAtual}');
  }

  print('-----------');

  while (ferrari.velocidadeAtual > 0) {
    ferrari.frear(5);
    print('Velocidade atual é de ${ferrari.velocidadeAtual}');
  }
}
