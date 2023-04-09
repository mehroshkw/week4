import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FlutterAnimateDemo extends StatelessWidget {
  static const String routeName = 'misc/flutter_animate';

  const FlutterAnimateDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animate Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Hello!\nThis is Explicit Animation",
                style: Theme.of(context).textTheme.headlineLarge,
              )
                  .animate(
                onPlay: (controller) => controller.repeat(),
              )
                  .then(delay: 250.ms)
                  .fadeIn(duration: 500.ms)
                  .then(delay: 250.ms)
                  .shimmer(duration: 700.ms)
                  .then(delay: 250.ms)
                  .slide()
                  .then(delay: 250.ms)
                  .blur(duration: 500.ms)
                  .then(delay: 100.ms),
              
              
              ElevatedButton(onPressed: (){}, child: Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}