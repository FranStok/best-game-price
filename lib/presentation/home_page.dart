import 'package:arquitectura/core/apis/dio/http_future.dart';
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/util/result.dart';
import 'package:arquitectura/domain/responses/test_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void apiTest() async{
      
    final response = await ServiceLocator().testRepository.test();
    response.onResult(left: (e){
      print(e.type);
    }, right: (response){
      print(response.data);
    });

    final reg=await ServiceLocator().authRepository.registration("franciscoastoreca@hotmail.com", "hola");
    reg.onResult(left: (e){
      print(e);
    }, right: (response){
      print(response.user);
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: apiTest,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}