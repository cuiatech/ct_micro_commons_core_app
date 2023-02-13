// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flut_micro_commons_client_https/flut_micro_commons_client_https.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
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
