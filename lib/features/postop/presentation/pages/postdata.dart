import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/clean_archi_bloc.dart';
import '../widgets/TextBox.dart';

class PostData extends StatefulWidget {
  const PostData({super.key});

  @override
  State<PostData> createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Post with Clean Architecture"),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // BlocBuilder<CleanArchiBloc, CleanArchiState>(
          //   builder: (context, state) {
          //     if (state is SubmitedState) {
          //       return Text("${state.res}");
          //     }
          //     return const Text("");
          //   },
          // ),

          BlocListener<CleanArchiBloc, CleanArchiState>(
            listener: (context, state) {
              if (state is SubmitedState) {
                print(state.res['name']);
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Container(
                      height: 150,
                      width: 200,
                      // width: MediaQuery.sizeOf(context).width - 50,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Id:- ${state.res['id']}"),
                            Text("Name:- ${state.res['name']}"),
                            Text("Password:- ${state.res['password']}"),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Okay"))
                          ],
                        ),
                      ),
                    ),
                    title: Text("Response"),
                  ),
                );
              }
              // TODO: implement listener
            },
            child: TextBox(controller: name, lable: "Name"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextBox(controller: password, lable: "Password"),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                if (name.text != "" && password.text != "") {
                  BlocProvider.of<CleanArchiBloc>(context).add(
                      SubmitEvent(name: name.text, password: password.text));
                }
              },
              child: Text("Submit"))
        ]));
  }
}
