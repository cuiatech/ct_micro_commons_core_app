// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'get_all_apps_usecase.dart';
import '../repositories/get_all_apps_repository.dart';
import 'package:ct_micro_commons_shared/shared/components/response/cuia_response.dart';

final $GetAllAppsImpUsecase = Bind.lazySingleton(
  (i) => GetAllAppsImpUsecase(i.get()),
  export: true,
);

class GetAllAppsImpUsecase implements GetAllAppsUsecase {
  final GetAllAppsRepository _getAllAppsRepository;

  GetAllAppsImpUsecase(this._getAllAppsRepository);

  @override
  Future<CuiaResponse> call() async {
    try {
      var data = await _getAllAppsRepository();
      return CuiaResponse(success: true, data: data);
    } catch (e) {
      return CuiaResponse(success: false, message: e.toString());
    }
  }
}
