# flutter_eval_gallery

A gallery demo for dart_eval and flutter_eval libraries.

# Architecture

This project consist of 2 projects:

- root:
  - A flutter APP contains dart_eval runtime, run bytecode from asset.
  - Support the bridges for bytecode
- template:
  - A flutter App for dynamic codepush
  - It will be compiled to bytecode, and loaded by root project at runtime.

There is a Windows BAT script for auto compiling template project into bytecode.
