import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_cafeteria_app/pages/home.dart';
import 'package:smart_cafeteria_app/pages/log_out_page.dart';
import 'package:smart_cafeteria_app/pages/order_page.dart';
import 'package:smart_cafeteria_app/widgets/BottomNavBar.dart';

void main() {
  group('BottomNavBarWidget tests', () {
    testWidgets('Initial state is correct', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: BottomNavBarWidget(),
      ));

      // Check initial state
      expect(find.byType(HomeScreen), findsOneWidget);
      expect(find.byType(OrderScreen), findsNothing);
      expect(find.byType(LogOutScreen), findsNothing);

      // Check initial selected index
      BottomNavigationBar bottomNavBar = tester.widget(find.byType(BottomNavigationBar));
      expect(bottomNavBar.currentIndex, equals(0));
    });

    testWidgets('Navigation works correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: BottomNavBarWidget(),
      ));

      // Tap the Order button
      await tester.tap(find.byIcon(Icons.near_me));
      await tester.pumpAndSettle();

      // Check if the Order page is displayed
      expect(find.byType(OrderScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
      expect(find.byType(LogOutScreen), findsNothing);

      // Verify the selected index is updated so the page changes
      BottomNavigationBar bottomNavBar = tester.widget(find.byType(BottomNavigationBar));
      expect(bottomNavBar.currentIndex, equals(1));

      // Tap on Logout button
      await tester.tap(find.byIcon(Icons.door_back_door));
      await tester.pumpAndSettle();

      // Verify the Logout page is displayed
      expect(find.byType(LogOutScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
      expect(find.byType(OrderScreen), findsNothing);

      // Verify the selected index is updated
      bottomNavBar = tester.widget(find.byType(BottomNavigationBar));
      expect(bottomNavBar.currentIndex, equals(2));
    });
  });
}
