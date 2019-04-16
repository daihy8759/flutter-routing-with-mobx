// General Flutter packages
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// MobX state management
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:myapp/state_store.dart';

// App components
import 'package:myapp/content_navigation.dart';
part 'package:myapp/bottom_navigation.dart';

// App routers
part 'package:myapp/content_routes.dart';

// App views
part 'package:myapp/content_views.dart';

// Globals
final StateStore stateStore = StateStore();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: new App(),
      ),
    );
  }
}

class App extends StatelessWidget {
  Widget _buildOffstageContent(ContentItem contentItem) {
    return Offstage(
      offstage: stateStore.currentContentItem != contentItem,
      child: contentItem == ContentItem.home ? HomeContent()
      : contentItem == ContentItem.more_content ? MoreContent()
      : contentItem == ContentItem.and_then_some ? AndThenSome()
      : Container(),
    );
  }

  @override
  Widget build(BuildContext context) => Observer(
    builder: (_) {
      return Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageContent(ContentItem.home),
          _buildOffstageContent(ContentItem.more_content),
          _buildOffstageContent(ContentItem.and_then_some),
        ]),
        bottomNavigationBar: BottomNavigation(),
      );
    }
  );
}
