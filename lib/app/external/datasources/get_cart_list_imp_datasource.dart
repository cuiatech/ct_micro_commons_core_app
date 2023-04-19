import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/get_cart_list_datasource.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

final $GetCartListImpDatasource = Bind.lazySingleton(
  (i) => GetCartListImpDatasource(i()),
  export: true,
);

class GetCartListImpDatasource implements GetCartListDatasource {
  GetCartListImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;

  @override
  Future<Map<String, dynamic>> call() async {
    var res = await _clientHttps.get('/api/cart');
    return res.data;
  }
}
