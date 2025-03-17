import 'package:beachy/core/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/colors.dart';
import 'core/utils/services_locater.dart';
import 'features/home/presentation/veiw-model/bloc/home_bloc.dart';

void main() {
  setupLocatorServices();
  runApp(const BeachyApp());
}

class BeachyApp extends StatelessWidget {
  const BeachyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<HomeBloc>()..add(FetchApartments()),
      child: MaterialApp.router(
        routerConfig: Routers.router,
        debugShowCheckedModeBanner: false,
        locale: const Locale("en"),
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          colorScheme:
              ColorScheme.fromSeed(seedColor: AppColors.backgroundColor),
          fontFamily: "Lexend",
          useMaterial3: true,
        ),
      ),
    );
  }
}
