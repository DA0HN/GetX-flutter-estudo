import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => MyHomePage()),
        GetPage(name: '/second', page: () => Second()),
      ],
    ),
  );
}

class Controller extends GetxController {
  int counter = 0;

  void incrementCounter() {
    counter++;
    update();
  }
}

class MyHomePage extends StatelessWidget {
  final controller = Get.put<Controller>(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Estudo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<Controller>(
              builder: (_) {
                return Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                Get.toNamed('/second');
              },
              child: Text('Próxima Tela'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class Second extends StatelessWidget {
  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text('${controller.counter}'),
      ),
    );
  }
}
