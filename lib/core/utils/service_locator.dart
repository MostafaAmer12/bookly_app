// import 'package:bookly_app/core/utils/api_service.dart';
// import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
//
// final getIt = GetIt.instance;
//
// void setup() {
//   getIt.registerSingleton<ApiService>(
//     ApiService(
//       dio: Dio(),
//     ),
//   );
//   getIt.registerSingleton<HomeRepoImpl>(
//     HomeRepoImpl(
//       apiService: getIt.get<ApiService>(),
//     ),
//   );
// }
// HomeRepoImpl(
// apiService: ApiService(
// dio: Dio(),
// ),
// ),