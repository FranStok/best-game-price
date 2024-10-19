import 'package:arquitectura/core/dio/dio_init.dart';
import 'package:arquitectura/data/repositories/test_repository_imp.dart';
import 'package:arquitectura/data/services/test_service.dart';
import 'package:arquitectura/domain/repositories/test_repository.dart';

ServiceLocator sl=ServiceLocator();

class ServiceLocator {
  static ServiceLocator? _instance;
  factory ServiceLocator() {
    TestService testService = TestService(DioInit.dio);
    TestRepository testRepository = TestRepositoryImp(testService: testService);


    
    _instance = ServiceLocator._interno(
        testService: testService, testRepository: testRepository);
    return _instance!;
  }

  ServiceLocator._interno(
      {required this.testService, required this.testRepository});


  final TestService testService;
  final TestRepository testRepository;
}


