import 'package:flutter/material.dart';

class MockupPageView extends StatelessWidget {
  const MockupPageView({
    super.key,
    required this.onBoarding,
    required PageController controller,
  }) : _controller = controller;

  final List onBoarding;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: onBoarding.length,
      controller: _controller,
      itemBuilder: (context, index) {
        return onBoarding[index];
      },
    );
  }
}
