import 'package:flutter_modular/flutter_modular.dart';
import 'get_my_apps_usecase.dart';
import '../repositories/get_my_apps_repository.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $GetMyAppsImpUsecase = Bind.lazySingleton(
  (i) => GetMyAppsImpUsecase(i.get()),
  export: true,
);

class GetMyAppsImpUsecase implements GetMyAppsUsecase {
  final GetMyAppsRepository _getMyAppsRepository;

  GetMyAppsImpUsecase(this._getMyAppsRepository);

  @override
  Future<CuiaResponse> call() async {
    try {
      var res = await _getMyAppsRepository();
      return CuiaResponse(success: true, data: res);
    } catch (e) {
      return CuiaResponse(success: false, message: e.toString());
    }
  }
}
