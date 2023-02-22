import 'package:flutter/material.dart';
import 'package:zealyug/onboardings.dart/main_screen.dart';
import 'package:zealyug/onboardings.dart/onboarding_screens.dart';

class OnboardingSlider extends StatefulWidget {
  const OnboardingSlider({Key? key}) : super(key: key);

  @override
  _OnboardingSliderState createState() => _OnboardingSliderState();
}

class _OnboardingSliderState extends State<OnboardingSlider> {
  late PageController _pageController;
  List<OnboardingScreen> _screens = [];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _screens = [
      OnboardingScreen(
        imageAsset: 'assets/images/Onboarding-amico.png',
        title: 'Welcome to MyApp',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        onNext: () {
          _pageController.animateToPage(
            1,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeIn,
          );
        },
        titleColor: Colors.blue.shade700,
      ),
      OnboardingScreen(
        imageAsset: 'assets/images/Onboarding-amico.png',
        title: 'Discover new features',
        description:
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        onNext: () {
          _pageController.animateToPage(
            2,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeIn,
          );
        },
        titleColor: Colors.blue.shade700,
      ),
      OnboardingScreen(
        imageAsset: 'assets/images/Onboarding-amico.png',
        title: 'Get started now',
        description:
            'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        onNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const OnboardingScreenMain(),
            ),
          );
        },
        titleColor: Colors.blue.shade700,
      ),
    ];
  }

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _screens.length,
            itemBuilder: (BuildContext context, int index) {
              return _screens[index];
            },
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _screens.length,
                (int index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 8,
                  width: index == _currentPage ? 24 : 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: index == _currentPage
                        ? Colors.blue.shade600
                        : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
