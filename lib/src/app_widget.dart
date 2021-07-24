import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/modules.dart';
import 'shared/modules/modules.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => CartStore()),
        Provider(create: (_) => ProductRepository()),
        Provider(create: (context) => ProductsStore(context.read<ProductRepository>())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobx',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/products',
        routes: {
          '/products': (_) => ProductPage(),
          '/cart': (_) => CartPage(),
        },
      ),
    );
  }
}
