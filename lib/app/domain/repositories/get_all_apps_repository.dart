// ignore_for_file: depend_on_referenced_packages

import 'package:ct_micro_commons_shared/shared/domain/models/dto/app_dto.dart';

abstract class GetAllAppsRepository {
  Future<List<AppDto>> call();
}
