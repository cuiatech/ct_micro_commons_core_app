import 'package:ct_micro_commons_shared/shared/domain/models/dto/app_dto.dart';

abstract class GetMyAppsRepository {
  Future<List<AppDto>> call();
}
