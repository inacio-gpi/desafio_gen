import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/http/custom_dio.dart';
import 'core/http/i_rest_client.dart';
import 'modules/home/data/datasource/home_datasource.dart';
import 'modules/home/domain/repositories/i_home_repository.dart';
import 'modules/home/domain/usecases/get_movie_preview_usecase.dart';
import 'modules/home/infra/datasources/i_home_datasource.dart';
import 'modules/home/infra/repository/home_repository.dart';
import 'modules/home/presenter/pages/home/home_controller.dart';
import 'modules/home/presenter/pages/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind.lazySingleton<IRestClient>((i) => CustomDio(i())),
        Bind.lazySingleton<IHomeDataSource>((i) => HomeDataSource(i())),
        Bind.lazySingleton<IHomeRepository>((i) => HomeRepository(i())),
        Bind.lazySingleton<IGetMoviePreviewUseCase>((i) => GetMoviePreviewUseCase(i())),
        Bind.lazySingleton<HomeController>((i) => HomeController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => HomePage()),
      ];
}
