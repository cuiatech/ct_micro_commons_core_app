// import 'package:flutter/material.dart';

import 'package:ct_micro_commons_core_app/app/data/repositories/app_checkout_imp_repository.dart';
import 'package:ct_micro_commons_core_app/app/data/repositories/get_all_apps_imp_repository.dart';
import 'package:ct_micro_commons_core_app/app/data/repositories/get_cart_list_imp_repository.dart';
import 'package:ct_micro_commons_core_app/app/data/repositories/get_my_apps_imp_repository.dart';
import 'package:ct_micro_commons_core_app/app/domain/usecases/app_checkout_imp_usecase.dart';
import 'package:ct_micro_commons_core_app/app/domain/usecases/get_all_apps_imp_usecase.dart';
import 'package:ct_micro_commons_core_app/app/domain/usecases/get_cart_list_imp_usecase.dart';
import 'package:ct_micro_commons_core_app/app/domain/usecases/get_my_apps_imp_usecase.dart';
import 'package:ct_micro_commons_core_app/app/external/datasources/app_checkout_imp_datasource.dart';
import 'package:ct_micro_commons_core_app/app/external/datasources/get_all_apps_imp_datasource.dart';
import 'package:ct_micro_commons_core_app/app/external/datasources/get_cart_list_imp_datasource.dart';
import 'package:ct_micro_commons_core_app/app/external/datasources/get_my_apps_imp_datasource.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class CoreAppModule extends Module {
  @override
  final List<Bind> binds = [
    // Datasources
    $GetMyAppsImpDatasource,
    $GetAllAppsImpDatasource,
    $AppCheckoutImpDatasource,
    $GetCartListImpDatasource,

    // Repositories
    $GetMyAppsImpRepository,
    $GetAllAppsImpRepository,
    $AppCheckoutImpRepository,
    $GetCartListImpRepository,

    // Usecases
    $GetMyAppsImpUsecase,
    $GetAllAppsImpUsecase,
    $AppCheckoutImpUsecase,
    $GetCartListImpUsecase,
  ];

  @override
  final List<ModularRoute> routes = [];
}
