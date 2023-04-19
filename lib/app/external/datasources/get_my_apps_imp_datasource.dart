import 'package:flutter_modular/flutter_modular.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';
import '../../data/datasources/get_my_apps_datasource.dart';

final $GetMyAppsImpDatasource = Bind.lazySingleton(
  (i) => GetMyAppsImpDatasource(i()),
  export: true,
);

class GetMyAppsImpDatasource implements GetMyAppsDatasource {
  GetMyAppsImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;

  @override
  Future<Map<String, dynamic>> call() async {
    var res = await _clientHttps.get('/api/my_apps');
    return res.data;
  }
}
