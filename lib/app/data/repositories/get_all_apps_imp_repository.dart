// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/get_all_apps_repository.dart';
import '../datasources/get_all_apps_datasource.dart';
import 'package:ct_micro_commons_shared/shared/domain/models/dto/app_dto.dart';

final $GetAllAppsImpRepository = Bind.lazySingleton(
  (i) => GetAllAppsImpRepository(i.get()),
  export: true,
);

class GetAllAppsImpRepository implements GetAllAppsRepository {
  final GetAllAppsDatasource _getAllAppsDatasource;

  GetAllAppsImpRepository(this._getAllAppsDatasource);

  @override
  Future<List<AppDto>> call() async {
    try {
      List<AppDto> list = <AppDto>[];
      var res = await _getAllAppsDatasource();

      (res['data'] as List).map((e) {
        list.add(AppDto.fromJson(e));
      }).toList();

      return list;
    } catch (e) {
      rethrow;
    }
  }
}
