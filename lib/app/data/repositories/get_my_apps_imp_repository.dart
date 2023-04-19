import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/get_my_apps_repository.dart';
import '../datasources/get_my_apps_datasource.dart';
import 'package:ct_micro_commons_shared/shared/domain/models/dto/app_dto.dart';

final $GetMyAppsImpRepository = Bind.lazySingleton(
  (i) => GetMyAppsImpRepository(i.get()),
  export: true,
);

class GetMyAppsImpRepository implements GetMyAppsRepository {
  final GetMyAppsDatasource _getMyAppsDatasource;

  GetMyAppsImpRepository(this._getMyAppsDatasource);

  @override
  Future<List<AppDto>> call() async {
    try {
      var res = await _getMyAppsDatasource();
      List<AppDto> list = <AppDto>[];

      res['data'].forEach((e) {
        list.add(AppDto.fromJson(e['app']));
      });

      return list;
    } catch (e) {
      rethrow;
    }
  }
}
