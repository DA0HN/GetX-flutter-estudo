import 'package:flutter/material.dart';

import 'home_controller.dart';

class RecoveredView extends StatelessWidget {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Total de recuperações',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              '${Controller.to.data.global.totalRecovered}',
              style: Theme.of(context).textTheme.headline5,
            ),
            FlatButton(
              color: Theme.of(context).buttonColor,
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Voltar',
                style: Theme.of(context).textTheme.headline5,
              ),
            )
          ],
        ));
  }
}
