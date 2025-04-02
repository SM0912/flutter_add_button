import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Second Screen!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
                height: 20), // Add some space between the text and button
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5);
                    }
                    return null; // Use the component's default.
                  },
                ),
              ),
              child: const Text('Fly me to the moon'),
              onPressed: () {
                // Handle button press action here
                // For example, you could navigate to another screen
                // Navigator.push(context, MaterialPageRoute(builder: (context) => AnotherScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
