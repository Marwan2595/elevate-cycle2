import 'package:elevate_cycle2/core/di/di.dart';
import 'package:elevate_cycle2/presentation/viewModels/cubits/home_cubit.dart';
import 'package:elevate_cycle2/presentation/viewModels/states/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeViewModel homeViewModel = getIt.get<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeViewModel>(
      create: (context) => homeViewModel,
      child: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                homeViewModel.getCategories();
              },
              child: Center(
                  child: Text(
                "Hello,World",
                style: TextStyle(
                  fontSize: 24,
                ),
              )),
            ),
            BlocBuilder<HomeViewModel, HomeState>(builder: (context, state) {
              switch (state) {
                case HomeLoadingState():
                case HomeInitState():
                  return Center(child: CircularProgressIndicator());
                case HomeSuccessState():
                  return Expanded(
                    child: ListView.builder(
                      itemCount: (state.catList.data ?? []).length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(
                          (state.catList.data ?? [])[index].name ?? "No Name -----",
                        ),
                      ),
                    ),
                  );
                case HomeErrorState():
                  return Text(state.exp.exception.toString());
              }
            })
          ],
        )),
      ),
    );
  }
}
