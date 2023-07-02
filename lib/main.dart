import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter_bloc.dart';
import 'package:flutter_application_1/bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.theme == AppTheme.light
                ? ThemeData.light()
                : ThemeData.dark(),
            title: 'Bloc',
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${context.watch<CounterBloc>().state.counter}'),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              context.read<ThemeBloc>().add(ToggleThemeEvent());
                            },
                            child: const Icon(Icons.brightness_6_outlined)),
                        ElevatedButton(
                            onPressed: () {
                              context.read<CounterBloc>().add(plusEvent());
                            },
                            child: const Icon(Icons.add)),
                        ElevatedButton(
                            onPressed: () {
                              context.read<CounterBloc>().add(minusEvent());
                            },
                            child: const Icon(Icons.remove)),
                        
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
