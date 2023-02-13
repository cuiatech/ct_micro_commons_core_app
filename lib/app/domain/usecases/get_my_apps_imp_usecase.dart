// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'get_my_apps_usecase.dart';
import '../repositories/get_my_apps_repository.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $GetMyAppsImpUsecase = Bind.lazySingleton(
  (i) => GetMyAppsImpUsecase(i.get()),
  export: true,
);

class GetMyAppsImpUsecase implements GetMyAppsUsecase {
  final GetMyAppsRepository _getMyAppsRepository;

  GetMyAppsImpUsecase(this._getMyAppsRepository);

  @override
  Future<CuiaResponse> call() async {
    return await _getMyAppsRepository();
  }
}
