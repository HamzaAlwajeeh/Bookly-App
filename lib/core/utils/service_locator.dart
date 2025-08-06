import 'package:bookly_app/Features/Search/data/repos/search_repo_impl.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt<ApiService>()));
  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(getIt<ApiService>()));
}
