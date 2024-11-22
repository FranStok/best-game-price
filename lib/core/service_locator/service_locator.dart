import 'package:arquitectura/core/apis/dio/dio_init.dart';
import 'package:arquitectura/data/repositories/auth_repository_imp.dart';
import 'package:arquitectura/data/repositories/custom_game_store_respository_imp.dart';
import 'package:arquitectura/data/services/auth_service.dart';
import 'package:arquitectura/data/services/custom_game_stores_service.dart';
import 'package:arquitectura/domain/repositories/auth_repository.dart';
import 'package:arquitectura/domain/repositories/custom_game_store_respository.dart';

ServiceLocator sl=ServiceLocator();

class ServiceLocator {
  static ServiceLocator? _instance;
  factory ServiceLocator() {
    CustomGameStoresService customGameStoresService = CustomGameStoresService(DioInit.dio);
    CustomGameStoresRepository testRepository = CustomGameStoresRepositoryImp(customGameStoresService: customGameStoresService);
    AuthService authService = AuthService();
    AuthRepository authRepository = AuthRepositoryImp(authService);


    
    _instance ??= ServiceLocator._interno(
        customGameStoresService: customGameStoresService,
        customGameStoresRepository: testRepository,
        authRepository: authRepository,
        authService: authService);
    return _instance!;
  }

  ServiceLocator._interno(
      {required this.customGameStoresService,
      required this.customGameStoresRepository,
      required this.authService,
      required this.authRepository});


  final CustomGameStoresService customGameStoresService;
  final CustomGameStoresRepository customGameStoresRepository;
  final AuthService authService;
  final AuthRepository authRepository;
}


