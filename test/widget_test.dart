import 'package:flutter_test/flutter_test.dart';

import 'package:profile_picker/main.dart';

void main() {
  testWidgets('Profile page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that profile info is displayed.
    expect(find.text('Profile Picture'), findsOneWidget);
    expect(find.text('Anne Margaritha'), findsOneWidget);
    expect(find.text('UX Designer'), findsOneWidget);

    // Verify Update Profile button exists
    expect(find.text('Update Profile'), findsOneWidget);

    // Tap the 'Update Profile' button.
    await tester.tap(find.text('Update Profile'));
    await tester.pumpAndSettle(); // Wait for bottom sheet animation

    // Verify bottom sheet content
    expect(find.text('Update Photo'), findsOneWidget);
    expect(find.text('Continue'), findsOneWidget);

    // Tap the 'Continue' button
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle(); // Wait for bottom sheet close animation

    // Verify bottom sheet is closed and SnackBar appears
    expect(find.text('Update Photo'), findsNothing);
    expect(find.text('Profile updated successfully!'), findsOneWidget);
  });
}
