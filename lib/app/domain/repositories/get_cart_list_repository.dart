import 'package:ct_micro_commons_shared/shared/domain/models/dto/cart_dto.dart';

abstract class GetCartListRepository {
  Future<CartDto> call();
}
