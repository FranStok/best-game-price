import 'package:arquitectura/core/apis/dio/dio_init.dart';
import 'package:arquitectura/data/repositories/auth_repository_imp.dart';
import 'package:arquitectura/data/repositories/test_repository_imp.dart';
import 'package:arquitectura/data/services/auth_service.dart';
import 'package:arquitectura/data/services/test_service.dart';
import 'package:arquitectura/domain/repositories/auth_repository.dart';
import 'package:arquitectura/domain/repositories/test_repository.dart';

ServiceLocator sl=ServiceLocator();

class ServiceLocator {
  static ServiceLocator? _instance;
  factory ServiceLocator() {
    TestService testService = TestService(DioInit.dio);
    TestRepository testRepository = TestRepositoryImp(testService: testService);
    AuthService authService = AuthService();
    AuthRepository authRepository = AuthRepositoryImp(authService);


    
    _instance ??= ServiceLocator._interno(
        testService: testService,
        testRepository: testRepository,
        authRepository: authRepository,
        authService: authService);
    return _instance!;
  }

  ServiceLocator._interno(
      {required this.testService,
      required this.testRepository,
      required this.authService,
      required this.authRepository});


  final TestService testService;
  final TestRepository testRepository;
  final AuthService authService;
  final AuthRepository authRepository;
}


