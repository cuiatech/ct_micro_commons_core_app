import 'package:ct_micro_commons_shared/shared/components/response/cuia_response.dart';

abstract class GetAllAppsUsecase {
  Future<CuiaResponse> call();
}
