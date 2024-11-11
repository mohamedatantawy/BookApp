import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:product/Features/Home/data/dataSources/home_localDataSource.dart';
import 'package:product/Features/Home/data/dataSources/home_remoteData_Source.dart';
import 'package:product/Features/Home/data/repos/home_repo_impl.dart';
import 'package:product/core/utils/ApiService.dart';

final getit = GetIt.instance;

void setup_service_locator() {
  getit.registerSingleton<Apiservice>(Apiservice(
          Dio(),
        ));
  getit.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocaldataSource: HomeLocaldatasourceImpl(),
      homeRemotedataSource: homeRemotedataSourceImpl(
       getit.get<Apiservice>() ,
      ),
    ),
  );
}
