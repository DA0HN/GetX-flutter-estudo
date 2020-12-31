import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends StatelessWidget {
  final controller = Get.put<Controller>(Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.srgbToLinearGamma(),
            image: NetworkImage(
                'https://mobilemed.com.br/wp-content/uploads/2020/03/Coronavirus-Covid-19-DNA-1024x768.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(child: Text('Consulta Covid-19 API')),
        ),
        body: Center(
          child: GetBuilder<Controller>(
            init: Controller(),
            initState: (_) {
              controller.fetchDataFromApi();
            },
            builder: (_) {
              if (controller.data == null) return CircularProgressIndicator();
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total de casos',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '${controller.data.global.totalConfirmed}',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    'Total de mortes',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '${controller.data.global.totalDeaths}',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  FlatButton(
                    color: Theme.of(context).buttonColor,
                    onPressed: () => Get.toNamed('/recovered'),
                    child: Text(
                      'Quantidade de recuperados',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
