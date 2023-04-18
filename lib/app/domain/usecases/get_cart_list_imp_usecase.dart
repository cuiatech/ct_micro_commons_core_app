// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'get_cart_list_usecase.dart';
import '../repositories/get_cart_list_repository.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $GetCartListImpUsecase = Bind.lazySingleton(
  (i) => GetCartListImpUsecase(i.get()),
  export: true,
);

class GetCartListImpUsecase implements GetCartListUsecase {
  final GetCartListRepository _getCartListRepository;

  GetCartListImpUsecase(this._getCartListRepository);

  @override
  Future<CuiaResponse> call() async {
    try {
      var res = await _getCartListRepository();
      return CuiaResponse(success: true, data: res);
    } catch (e) {
      return CuiaResponse(success: false, message: e.toString());
    }
  }
}
