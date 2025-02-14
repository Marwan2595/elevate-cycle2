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
        body: Center(
          child: Text("wytqwuytquwetuqwyteuyqwtuyqwet"),
        ),
      ),
    );
  }
}
