import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) => Scaffold(
        body: AnimatedBuilder(
          animation: controller.moviePreview,
          builder: (context, child) => ListView.builder(
            itemCount: controller.moviePreview.value?.mcu.length ?? 0,
            itemBuilder: (context, index) {
              final item = controller.moviePreview.value!.mcu[index];
              return ListTile(
                title: Text(item.title),
              );
            },
          ),
        ),
      );
}
