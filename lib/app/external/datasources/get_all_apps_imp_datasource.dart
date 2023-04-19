import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/get_all_apps_datasource.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';

final $GetAllAppsImpDatasource = Bind.lazySingleton(
  (i) => GetAllAppsImpDatasource(i()),
  export: true,
);

class GetAllAppsImpDatasource implements GetAllAppsDatasource {
  GetAllAppsImpDatasource(this._clientHttps);
  final ClientHttps _clientHttps;

  @override
  Future<Map<String, dynamic>> call() async {
    var res = await _clientHttps.get('/api/apps/all');
    return Map.from(res.data);
  }
}
