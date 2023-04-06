// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/app_checkout_datasource.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';

final $AppCheckoutImpDatasource = Bind.lazySingleton(
  (i) => AppCheckoutImpDatasource(i.get()),
  export: true,
);

class AppCheckoutImpDatasource implements AppCheckoutDatasource {
  AppCheckoutImpDatasource(this._clientHttps);
  final ClientHttps _clientHttps;
  @override
  Future<Map<String, dynamic>> call(int appId, {int? quantity}) async {
    var res = await _clientHttps.post('/api/apps/checkout', data: {
      'appId': appId,
      'quantity': quantity,
    });
    return Map.from(res.data);
  }
}
