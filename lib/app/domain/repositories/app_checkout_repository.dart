import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class AppCheckoutRepository {
  Future<OrderDto> call(int appId, {int? quantity});
}
