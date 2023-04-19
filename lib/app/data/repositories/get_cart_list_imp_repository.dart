import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/get_cart_list_repository.dart';
import '../datasources/get_cart_list_datasource.dart';
import 'package:ct_micro_commons_shared/shared/domain/models/dto/cart_dto.dart';

final $GetCartListImpRepository = Bind.lazySingleton(
  (i) => GetCartListImpRepository(i.get()),
  export: true,
);

class GetCartListImpRepository implements GetCartListRepository {
  final GetCartListDatasource _getCartListDatasource;

  GetCartListImpRepository(this._getCartListDatasource);

  @override
  Future<CartDto> call() async {
    try {
      var res = await _getCartListDatasource();
      return CartDto.fromJson(res['data']);
    } catch (e) {
      rethrow;
    }
  }
}
