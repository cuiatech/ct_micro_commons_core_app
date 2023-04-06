// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'app_checkout_usecase.dart';
import '../repositories/app_checkout_repository.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $AppCheckoutImpUsecase = Bind.lazySingleton(
  (i) => AppCheckoutImpUsecase(i.get()),
  export: true,
);

class AppCheckoutImpUsecase implements AppCheckoutUsecase {
  final AppCheckoutRepository _appCheckoutRepository;

  AppCheckoutImpUsecase(this._appCheckoutRepository);

  @override
  Future<CuiaResponse> call(int appId, {int? quantity}) async {
    try {
      var res = await _appCheckoutRepository(appId, quantity: quantity);
      return CuiaResponse(success: true, data: res);
    } catch (e) {
      return CuiaResponse(success: false, message: e.toString());
    }
  }
}
