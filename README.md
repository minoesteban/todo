# todo

## Flutter:

- SDK Version: built for 3.13.3 (restricted in pubspec.yaml)
- Managed by FVM

## How to run:

- Platforms: web, macos, ios, android
- If using FVM, run `make fvm_run`
- If not , run `make run`

## App architecture & design

- Clean Architecture - Presentation <-> Provider -> Use Cases -> Repositories -> Data Sources -> Network clients
- For API data handling, using Data Transfer Objects + Mappers
- For DI, using Service Locator
- For State management, using Provider
- No router implemented, as it is a single page app for now
