import 'package:flutter/material.dart';
import 'repository/mock/mock_location_repository.dart';
import 'repository/mock/mock_ride_preferences_repository.dart';
import 'screens/ride_pref/ride_pref_screen.dart';
import 'service/locations_service.dart';
import 'service/ride_prefs_service.dart';
import 'theme/theme.dart';

void main() {
  // 1 - Initialize the services
  RidePrefService.initialize(MockRidePreferencesRepository());
  // 2 - Initialize LocationsService with MockLocationsRepository (for testing)
  LocationsService.initialize(MockLocationsRepository());

  // 2- Run the UI
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(body: RidePrefScreen()),
    );
  }
}
