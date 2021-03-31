import './nota_fiscal.dart';
import './itens_nf.dart';
import './taxas.dart';

main() {
  var nota = NotaFiscal();

  List<ItensNF> linhas = [
    ItensNF(preco: 81.98, quantidade: 100),
    ItensNF(preco: 96.5, quantidade: 150),
  ];

  var totalNota = nota.calculaBruto(linhas);

  List<Taxas> tx = [
    Taxas(aliquota: 0.12, base: totalNota),
    Taxas(aliquota: 0.05, base: totalNota),
  ];

  var totalTx = nota.calculaTaxas(tx);

  print('O valor bruto da NF é de R\$${totalNota}');
  print('O total das taxas é de R\$${totalTx}');
  print('O valor líquido da NF é de R\$${nota.calculaLiquido()}');
}
