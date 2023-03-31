// import 'package:flutter/material.dart';
// ignore_for_file: depend_on_referenced_packages

import 'package:ct_micro_commons_core_app/app/data/repositories/get_all_apps_imp_repository.dart';
import 'package:ct_micro_commons_core_app/app/data/repositories/get_my_apps_imp_repository.dart';
import 'package:ct_micro_commons_core_app/app/domain/usecases/get_all_apps_imp_usecase.dart';
import 'package:ct_micro_commons_core_app/app/domain/usecases/get_my_apps_imp_usecase.dart';
import 'package:ct_micro_commons_core_app/app/external/datasources/get_all_apps_imp_datasource.dart';
import 'package:ct_micro_commons_core_app/app/external/datasources/get_my_apps_imp_datasource.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class CoreAppModule extends Module {
  @override
  final List<Bind> binds = [
    // Datasources
    $GetMyAppsImpDatasource,
    $GetAllAppsImpDatasource,

    // Repositories
    $GetMyAppsImpRepository,
    $GetAllAppsImpRepository,

    // Usecases
    $GetMyAppsImpUsecase,
    $GetAllAppsImpUsecase,
  ];

  @override
  final List<ModularRoute> routes = [];
}
