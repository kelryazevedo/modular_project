# Project Description

This is a Flutter Web sample project created primarily as a learning exercise and proof-of-concept. The main goals of this project are:
To understand and practice the core concepts of Flutter Web (layout, routing, responsive behavior, web-specific considerations).
To explore and apply the Flutter Modular v6 architecture for routing, dependency injection, module separation, and maintainability.
To experiment with migrating from Modular v5 to v6 and to observe the improvements in syntax, testability, and structure.
This project is not intended as a production-ready application, but rather a sandbox to deepen my knowledge of modular architectures in Flutter, especially in a web context.

# Migration Notes (v5 → v6)

During development, a significant part of the learning was understanding how Modular changed from version 5 to version 6. Some of the key changes:

# Routes definition
In v5 you would write a List<ModularRoute> get routes => [...]

In v6 you instead define a void routes(r) method and call r.child(...), r.module(...), etc. 
modular.flutterando.com.br

# Binds / Dependency registration
In v5 you had List<Bind> get binds => [...]

In v6 this becomes void binds(i) { i.add(...); i.addSingleton(...); } 
modular.flutterando.com.br

# Exported binds
In v5 you had to mark Bind(..., exported: true)

In v6, you instead use the exportedBinds(i) method to mark which services are exported to other modules. 
modular.flutterando.com.br

# App / MaterialApp setup

In v5 your MaterialApp.router used routeInformationParser + routerDelegate

In v6 you use routerConfig: Modular.routerConfig directly. 
modular.flutterando.com.br

# Testing

The modular_test package becomes unnecessary; the modular architecture is more testable out-of-the-box. 
modular.flutterando.com.br

These changes led to a cleaner, more testable, and more maintainable module structure.

<img width="1674" height="958" alt="Screenshot 2025-10-16 at 20 09 01" src="https://github.com/user-attachments/assets/52ca9406-2b97-41bf-a17f-69bfd1efecac" />




