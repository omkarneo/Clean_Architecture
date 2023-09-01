import 'package:clean_architecture/features/getjokes/presentation/page/getjokes.dart';
import 'package:clean_architecture/features/postop/presentation/pages/postdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di_container.dart';
import 'features/getjokes/presentation/bloc/getnews_bloc.dart';
import 'features/homepage/presentation/widget/homepage.dart';
import 'features/postop/data/repository/repiim.dart';
import 'features/postop/domain/repository/namerepo.dart';
import 'features/postop/presentation/bloc/clean_archi_bloc.dart';

void main() async {
  await initializeDependencies();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CleanArchiBloc>(
          create: (context) => locator<CleanArchiBloc>(),
        ),
        BlocProvider<GetnewsBloc>(
          create: (context) => locator<GetnewsBloc>(),
        )
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
