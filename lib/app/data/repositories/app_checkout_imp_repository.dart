import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/app_checkout_repository.dart';
import '../datasources/app_checkout_datasource.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $AppCheckoutImpRepository = Bind.lazySingleton(
  (i) => AppCheckoutImpRepository(i.get()),
  export: true,
);

class AppCheckoutImpRepository implements AppCheckoutRepository {
  final AppCheckoutDatasource _appCheckoutDatasource;

  AppCheckoutImpRepository(this._appCheckoutDatasource);

  @override
  Future<OrderDto> call(int appId, {int? quantity}) async {
    try {
      var res = await _appCheckoutDatasource(appId, quantity: quantity);
      return OrderDto.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }
}
