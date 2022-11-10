

import 'package:flutter/material.dart';

ThemeData swTheme(BuildContext context) {
  return Theme.of(context).copyWith(
        primaryColor: Colors.yellow,
        toggleableActiveColor: Colors.yellow,
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Colors.yellow,
              secondary: Colors.yellow
            ),
          backgroundColor: Colors.grey,
          primaryIconTheme: const IconThemeData(
            color: Colors.yellow,
          ),
          hintColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.yellow,
          ),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: const TextStyle(
              color: Colors.yellow,
            ),
            hintStyle:
              Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
          ),
          appBarTheme:
              AppBarTheme.of(context).copyWith(backgroundColor: Colors.black),
          scaffoldBackgroundColor: Colors.grey[300]);
}