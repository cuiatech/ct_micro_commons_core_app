import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class AppCheckoutUsecase {
  Future<CuiaResponse> call(int appId, {int? quantity});
}
