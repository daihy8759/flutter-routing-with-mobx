part of 'main.dart';

class HomeLandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Landing'),
      ),
      body: Container(
        margin: EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            RaisedButton(
              child: const Text('Secondary home content'),
              onPressed: () => stateStore.setHomeRoute(HomeRoute.secondary),
            )
          ]
        )
      )
    );
  }
}

class HomeSecondaryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Secondary'),
      ),
      body: Container(
        margin: EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.'),
            RaisedButton(
              child: const Text('Tertiary home content'),
              onPressed: () => stateStore.setHomeRoute(HomeRoute.tertiary),
            ),
            RaisedButton(
              child: const Text('Back'),
              onPressed: () => stateStore.setHomeRoute(HomeRoute.landing),
            )
          ]
        )
      )
    );
  }
}

class HomeTertiaryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Tertiary'),
      ),
      body: Container(
        margin: EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            RaisedButton(
              child: const Text('Back'),
              onPressed: () => stateStore.setHomeRoute(HomeRoute.secondary),
            )
          ]
        )
      )
    );
  }
}

class MoreContentLandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Content Landing'),
      ),
      body: Container(
        margin: EdgeInsets.all(50.0),
        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
      )
    );
  }
}

class AndThenSomeLandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('And Then Some Landing'),
      ),
      body: Container(
        margin: EdgeInsets.all(50.0),
        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
      )
    );
  }
}
