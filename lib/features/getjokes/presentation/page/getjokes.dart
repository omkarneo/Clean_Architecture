import 'package:clean_architecture/features/getjokes/presentation/bloc/getnews_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetNews extends StatefulWidget {
  const GetNews({super.key});

  @override
  State<GetNews> createState() => _GetNewsState();
}

class _GetNewsState extends State<GetNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Clean Archi with Get Jokes")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<GetnewsBloc, GetnewsState>(
            builder: (context, state) {
              if (state is LoadedState) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height / 3,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("${state.res[index].setup}"),
                          subtitle: Text("${state.res[index].punchline}"),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          color: Colors.grey.shade600,
                          width: MediaQuery.sizeOf(context).width,
                          height: 1,
                        );
                      },
                      itemCount: state.res.length),
                );
              }
              return const Text("");
            },
          ),
          BlocBuilder<GetnewsBloc, GetnewsState>(
            builder: (context, state) {
              if (state is LoadedState) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height / 3,
                  child: ListTile(
                    title: Text(state.randomjoke['setup']),
                    subtitle: Text(state.randomjoke['punchline']),
                    leading: Text("${state.randomjoke['id']}"),
                  ),
                );
              }
              return const Text("");
            },
          ),
          Center(
              child: ElevatedButton(
            child: const Text("Get Joke"),
            onPressed: () {
              BlocProvider.of<GetnewsBloc>(context).add(ApihitEvent());
            },
          )),
        ],
      ),
    );
  }
}

class GetNewsBloc {}
