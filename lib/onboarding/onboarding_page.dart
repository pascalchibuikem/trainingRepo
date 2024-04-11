import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/onboarding_card.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  static final PageController _pageController = PageController(initialPage: 0);
  List<Widget> _onboardingPages = [
    //first card
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/recipe10.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: OnboardingCard(
        title: 'Welcome to TribalTaste',
        description: 'Nunber One African Recipe Home',
        buttonText: 'Next',
        onPressed: () {
          _pageController.animateToPage(1,
              duration: Durations.long1, curve: Curves.easeInToLinear);
        },
      ),
    ),
    //navigating to second card
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/recipe11.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: OnboardingCard(
          title: 'Wholly African Food Arena',
          description:
              'This is Your first choice hub for Indegenous African food',
          buttonText: 'Next',
          onPressed: () {
            _pageController.animateToPage(2,
                duration: Durations.long1, curve: Curves.easeInToLinear);
          },
        ),
      ),
    ),
    //navigating to third card
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/recipe9.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: OnboardingCard(
        title: 'Enjoy Our Delicacies',
        description: 'Thanks for your Patronage in anticipation',
        buttonText: 'Get Started',
        onPressed: () {},
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _onboardingPages,
              ),
            ),
            //styling the smooth page indicator (bottom dots below next button)
            SmoothPageIndicator(
                controller: _pageController,
                count: _onboardingPages.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: Theme.of(context).colorScheme.primary,
                ),
                onDotClicked: (index) {
                  _pageController.animateToPage(index,
                      duration: Durations.long1, curve: Curves.linear);
                })
          ],
        ),
      ),
    );
  }
}
