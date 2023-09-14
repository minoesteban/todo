fvm_run:
	fvm dart run build_runner build --delete-conflicting-outputs
	fvm flutter run --debug

run:
	dart run build_runner build --delete-conflicting-outputs
	flutter run --debug
