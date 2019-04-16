part of 'main.dart';

class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeContentState();
}

class HomeContentState extends State<HomeContent> {
  HomeLandingView landingView;
  HomeSecondaryView secondaryView;
  HomeTertiaryView tertiaryView;

  @override
  initState() {
    super.initState();
    landingView = new HomeLandingView();
    secondaryView = new HomeSecondaryView();
    tertiaryView = new HomeTertiaryView();
  }

  @override
  Widget build(BuildContext context) {
    return stateStore.currentHomeRoute == HomeRoute.landing ? landingView
    : stateStore.currentHomeRoute == HomeRoute.secondary ? secondaryView
    : stateStore.currentHomeRoute == HomeRoute.tertiary ? tertiaryView
    : Container();
  }
}

class MoreContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MoreContentState();
}

class MoreContentState extends State<MoreContent> {
  MoreContentLandingView landingView;

  @override
  initState() {
    super.initState();
    landingView = new MoreContentLandingView();
  }

  @override
  Widget build(BuildContext context) {
    return landingView;
  }
}

class AndThenSome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AndThenSomeState();
}

class AndThenSomeState extends State<AndThenSome> {
  AndThenSomeLandingView landingView;

  @override
  initState() {
    super.initState();
    landingView = new AndThenSomeLandingView();
  }

  @override
  Widget build(BuildContext context) {
    return landingView;
  }
}
