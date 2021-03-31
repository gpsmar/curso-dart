import './itens_nf.dart';
import './taxas.dart';

class NotaFiscal {
  //ItensNF itens;
  double valorBruto = 0.0;
  double totalTaxas = 0.0;
  //double valorLiquido;

  //NotaFiscal();

  double calculaBruto(List<ItensNF> l) {
    valorBruto = l.map((item) => item.preco * item.quantidade).reduce(
        (t, e) => t + e); //estou somando o total dos itens e o último elemento
    return valorBruto;
  }

  double calculaTaxas(List<Taxas> l) {
    totalTaxas =
        l.map((tx) => tx.aliquota * valorBruto).reduce((t, e) => t + e);
    return totalTaxas;
  }

  double calculaLiquido() => valorBruto - totalTaxas;
}
